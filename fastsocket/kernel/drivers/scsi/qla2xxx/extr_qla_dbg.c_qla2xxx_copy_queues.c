
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rsp_que {int length; int ring; } ;
struct req_que {int length; int ring; } ;
struct qla_hw_data {struct rsp_que** rsp_q_map; struct req_que** req_q_map; } ;
typedef int response_t ;
typedef int request_t ;


 int memcpy (void*,int ,int) ;

__attribute__((used)) static inline void *
qla2xxx_copy_queues(struct qla_hw_data *ha, void *ptr)
{
 struct req_que *req = ha->req_q_map[0];
 struct rsp_que *rsp = ha->rsp_q_map[0];

 memcpy(ptr, req->ring, req->length *
     sizeof(request_t));


 ptr += req->length * sizeof(request_t);
 memcpy(ptr, rsp->ring, rsp->length *
     sizeof(response_t));

 return ptr + (rsp->length * sizeof(response_t));
}
