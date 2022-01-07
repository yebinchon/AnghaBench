
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void* uint32_t ;
struct rsp_que {int length; int ring; } ;
struct req_que {int length; int ring; } ;
struct qla_hw_data {int max_req_queues; int max_rsp_queues; struct rsp_que** rsp_q_map; struct req_que** req_q_map; int mqenable; } ;
struct qla2xxx_mqueue_header {void* size; void* number; void* queue; } ;
struct qla2xxx_mqueue_chain {void* chain_size; void* type; } ;
typedef int response_t ;
typedef int request_t ;


 int DUMP_CHAIN_QUEUE ;
 int TYPE_REQUEST_QUEUE ;
 int TYPE_RESPONSE_QUEUE ;
 void* __constant_htonl (int ) ;
 void* htonl (int) ;
 int memcpy (void*,int ,int) ;

__attribute__((used)) static inline void *
qla25xx_copy_mqueues(struct qla_hw_data *ha, void *ptr, uint32_t **last_chain)
{
 struct qla2xxx_mqueue_chain *q;
 struct qla2xxx_mqueue_header *qh;
 struct req_que *req;
 struct rsp_que *rsp;
 int que;

 if (!ha->mqenable)
  return ptr;


 for (que = 1; que < ha->max_req_queues; que++) {
  req = ha->req_q_map[que];
  if (!req)
   break;


  q = ptr;
  *last_chain = &q->type;
  q->type = __constant_htonl(DUMP_CHAIN_QUEUE);
  q->chain_size = htonl(
      sizeof(struct qla2xxx_mqueue_chain) +
      sizeof(struct qla2xxx_mqueue_header) +
      (req->length * sizeof(request_t)));
  ptr += sizeof(struct qla2xxx_mqueue_chain);


  qh = ptr;
  qh->queue = __constant_htonl(TYPE_REQUEST_QUEUE);
  qh->number = htonl(que);
  qh->size = htonl(req->length * sizeof(request_t));
  ptr += sizeof(struct qla2xxx_mqueue_header);


  memcpy(ptr, req->ring, req->length * sizeof(request_t));
  ptr += req->length * sizeof(request_t);
 }


 for (que = 1; que < ha->max_rsp_queues; que++) {
  rsp = ha->rsp_q_map[que];
  if (!rsp)
   break;


  q = ptr;
  *last_chain = &q->type;
  q->type = __constant_htonl(DUMP_CHAIN_QUEUE);
  q->chain_size = htonl(
      sizeof(struct qla2xxx_mqueue_chain) +
      sizeof(struct qla2xxx_mqueue_header) +
      (rsp->length * sizeof(response_t)));
  ptr += sizeof(struct qla2xxx_mqueue_chain);


  qh = ptr;
  qh->queue = __constant_htonl(TYPE_RESPONSE_QUEUE);
  qh->number = htonl(que);
  qh->size = htonl(rsp->length * sizeof(response_t));
  ptr += sizeof(struct qla2xxx_mqueue_header);


  memcpy(ptr, rsp->ring, rsp->length * sizeof(response_t));
  ptr += rsp->length * sizeof(response_t);
 }

 return ptr;
}
