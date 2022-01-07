
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ib_wc {int byte_len; int opcode; scalar_t__ pkey_index; scalar_t__ dlid_path_bits; scalar_t__ src_qp; scalar_t__ sl; scalar_t__ slid; scalar_t__ wc_flags; int * qp; int wr_id; int status; } ;
struct TYPE_2__ {int context; } ;
struct c2wr_ce {int bytes_rcvd; TYPE_1__ hdr; scalar_t__ qp_user_context; } ;
struct c2_qp {int sq_mq; int rq_mq; int ibqp; } ;
struct c2_dev {int dummy; } ;
struct c2_cq {int mq; } ;







 int EAGAIN ;
 int IB_WC_BIND_MW ;
 int IB_WC_RDMA_READ ;
 int IB_WC_RDMA_WRITE ;
 int IB_WC_RECV ;
 int IB_WC_SEND ;
 int be32_to_cpu (int ) ;
 int c2_cqe_status_to_openib (int ) ;
 struct c2wr_ce* c2_mq_consume (int *) ;
 int c2_mq_free (int *) ;
 int c2_mq_lconsume (int *,int) ;
 int c2_wr_get_id (struct c2wr_ce*) ;
 int c2_wr_get_result (struct c2wr_ce*) ;
 int c2_wr_get_wqe_count (struct c2wr_ce*) ;

__attribute__((used)) static inline int c2_poll_one(struct c2_dev *c2dev,
         struct c2_cq *cq, struct ib_wc *entry)
{
 struct c2wr_ce *ce;
 struct c2_qp *qp;
 int is_recv = 0;

 ce = c2_mq_consume(&cq->mq);
 if (!ce) {
  return -EAGAIN;
 }






 while ((qp =
  (struct c2_qp *) (unsigned long) ce->qp_user_context) == ((void*)0)) {
  c2_mq_free(&cq->mq);
  ce = c2_mq_consume(&cq->mq);
  if (!ce)
   return -EAGAIN;
 }

 entry->status = c2_cqe_status_to_openib(c2_wr_get_result(ce));
 entry->wr_id = ce->hdr.context;
 entry->qp = &qp->ibqp;
 entry->wc_flags = 0;
 entry->slid = 0;
 entry->sl = 0;
 entry->src_qp = 0;
 entry->dlid_path_bits = 0;
 entry->pkey_index = 0;

 switch (c2_wr_get_id(ce)) {
 case 128:
  entry->opcode = IB_WC_SEND;
  break;
 case 130:
  entry->opcode = IB_WC_RDMA_WRITE;
  break;
 case 131:
  entry->opcode = IB_WC_RDMA_READ;
  break;
 case 132:
  entry->opcode = IB_WC_BIND_MW;
  break;
 case 129:
  entry->byte_len = be32_to_cpu(ce->bytes_rcvd);
  entry->opcode = IB_WC_RECV;
  is_recv = 1;
  break;
 default:
  break;
 }


 if (is_recv)
  c2_mq_lconsume(&qp->rq_mq, 1);
 else
  c2_mq_lconsume(&qp->sq_mq,
          be32_to_cpu(c2_wr_get_wqe_count(ce)) + 1);


 c2_mq_free(&cq->mq);

 return 0;
}
