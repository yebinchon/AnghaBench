
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_9__ ;
typedef struct TYPE_23__ TYPE_8__ ;
typedef struct TYPE_22__ TYPE_7__ ;
typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_24__ {void* length; void* remote_to; void* remote_stag; void* local_to; void* local_stag; } ;
struct TYPE_21__ {void* sge_len; int data; void* remote_to; void* remote_stag; } ;
struct TYPE_20__ {void* sge_len; int data; void* remote_stag; } ;
struct TYPE_16__ {int context; } ;
struct TYPE_17__ {TYPE_1__ hdr; } ;
struct TYPE_18__ {TYPE_2__ user_hdr; } ;
struct TYPE_13__ {TYPE_9__ rdma_read; TYPE_6__ rdma_write; TYPE_5__ send; TYPE_3__ sq_hdr; } ;
union c2wr {TYPE_10__ sqwr; } ;
typedef int u8 ;
typedef int u32 ;
struct TYPE_22__ {int rkey; int remote_addr; } ;
struct TYPE_23__ {TYPE_7__ rdma; } ;
struct TYPE_19__ {int invalidate_rkey; } ;
struct ib_send_wr {int send_flags; int opcode; int num_sge; struct ib_send_wr* next; TYPE_12__* sg_list; TYPE_8__ wr; TYPE_4__ ex; int wr_id; } ;
struct ib_qp {int device; } ;
struct c2wr_send_req {int dummy; } ;
struct c2wr_rdma_write_req {int dummy; } ;
struct c2wr_rdma_read_req {int dummy; } ;
struct TYPE_14__ {int hint_count; int index; } ;
struct c2_qp {scalar_t__ state; int send_sgl_depth; int rdma_write_sgl_depth; int lock; TYPE_11__ sq_mq; } ;
struct c2_dev {int dummy; } ;
struct c2_data_addr {int dummy; } ;
struct TYPE_15__ {int lkey; int length; int addr; } ;


 int C2_WR_TYPE_RDMA_READ ;
 int C2_WR_TYPE_RDMA_WRITE ;
 int C2_WR_TYPE_SEND ;
 int C2_WR_TYPE_SEND_INV ;
 int C2_WR_TYPE_SEND_SE ;
 int C2_WR_TYPE_SEND_SE_INV ;
 int EINVAL ;
 scalar_t__ IB_QPS_RTS ;
 int IB_SEND_FENCE ;
 int IB_SEND_SIGNALED ;
 int IB_SEND_SOLICITED ;




 int SQ_READ_FENCE ;
 int SQ_SIGNALED ;
 int c2_activity (struct c2_dev*,int ,int ) ;
 int c2_wr_set_flags (union c2wr*,int) ;
 int c2_wr_set_id (union c2wr*,int ) ;
 int c2_wr_set_sge_count (union c2wr*,int ) ;
 void* cpu_to_be32 (int) ;
 void* cpu_to_be64 (int ) ;
 int move_sgl (struct c2_data_addr*,TYPE_12__*,int,int*,int *) ;
 int qp_wr_post (TYPE_11__*,union c2wr*,struct c2_qp*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct c2_dev* to_c2dev (int ) ;
 struct c2_qp* to_c2qp (struct ib_qp*) ;

int c2_post_send(struct ib_qp *ibqp, struct ib_send_wr *ib_wr,
   struct ib_send_wr **bad_wr)
{
 struct c2_dev *c2dev = to_c2dev(ibqp->device);
 struct c2_qp *qp = to_c2qp(ibqp);
 union c2wr wr;
 unsigned long lock_flags;
 int err = 0;

 u32 flags;
 u32 tot_len;
 u8 actual_sge_count;
 u32 msg_size;

 if (qp->state > IB_QPS_RTS) {
  err = -EINVAL;
  goto out;
 }

 while (ib_wr) {

  flags = 0;
  wr.sqwr.sq_hdr.user_hdr.hdr.context = ib_wr->wr_id;
  if (ib_wr->send_flags & IB_SEND_SIGNALED) {
   flags |= SQ_SIGNALED;
  }

  switch (ib_wr->opcode) {
  case 129:
  case 128:
   if (ib_wr->opcode == 129) {
    if (ib_wr->send_flags & IB_SEND_SOLICITED)
     c2_wr_set_id(&wr, C2_WR_TYPE_SEND_SE);
    else
     c2_wr_set_id(&wr, C2_WR_TYPE_SEND);
    wr.sqwr.send.remote_stag = 0;
   } else {
    if (ib_wr->send_flags & IB_SEND_SOLICITED)
     c2_wr_set_id(&wr, C2_WR_TYPE_SEND_SE_INV);
    else
     c2_wr_set_id(&wr, C2_WR_TYPE_SEND_INV);
    wr.sqwr.send.remote_stag =
     cpu_to_be32(ib_wr->ex.invalidate_rkey);
   }

   msg_size = sizeof(struct c2wr_send_req) +
    sizeof(struct c2_data_addr) * ib_wr->num_sge;
   if (ib_wr->num_sge > qp->send_sgl_depth) {
    err = -EINVAL;
    break;
   }
   if (ib_wr->send_flags & IB_SEND_FENCE) {
    flags |= SQ_READ_FENCE;
   }
   err = move_sgl((struct c2_data_addr *) & (wr.sqwr.send.data),
           ib_wr->sg_list,
           ib_wr->num_sge,
           &tot_len, &actual_sge_count);
   wr.sqwr.send.sge_len = cpu_to_be32(tot_len);
   c2_wr_set_sge_count(&wr, actual_sge_count);
   break;
  case 130:
   c2_wr_set_id(&wr, C2_WR_TYPE_RDMA_WRITE);
   msg_size = sizeof(struct c2wr_rdma_write_req) +
       (sizeof(struct c2_data_addr) * ib_wr->num_sge);
   if (ib_wr->num_sge > qp->rdma_write_sgl_depth) {
    err = -EINVAL;
    break;
   }
   if (ib_wr->send_flags & IB_SEND_FENCE) {
    flags |= SQ_READ_FENCE;
   }
   wr.sqwr.rdma_write.remote_stag =
       cpu_to_be32(ib_wr->wr.rdma.rkey);
   wr.sqwr.rdma_write.remote_to =
       cpu_to_be64(ib_wr->wr.rdma.remote_addr);
   err = move_sgl((struct c2_data_addr *)
           & (wr.sqwr.rdma_write.data),
           ib_wr->sg_list,
           ib_wr->num_sge,
           &tot_len, &actual_sge_count);
   wr.sqwr.rdma_write.sge_len = cpu_to_be32(tot_len);
   c2_wr_set_sge_count(&wr, actual_sge_count);
   break;
  case 131:
   c2_wr_set_id(&wr, C2_WR_TYPE_RDMA_READ);
   msg_size = sizeof(struct c2wr_rdma_read_req);


   if (ib_wr->num_sge > 1) {
    err = -EINVAL;
    break;
   }




   wr.sqwr.rdma_read.local_stag =
       cpu_to_be32(ib_wr->sg_list->lkey);
   wr.sqwr.rdma_read.local_to =
       cpu_to_be64(ib_wr->sg_list->addr);
   wr.sqwr.rdma_read.remote_stag =
       cpu_to_be32(ib_wr->wr.rdma.rkey);
   wr.sqwr.rdma_read.remote_to =
       cpu_to_be64(ib_wr->wr.rdma.remote_addr);
   wr.sqwr.rdma_read.length =
       cpu_to_be32(ib_wr->sg_list->length);
   break;
  default:

   msg_size = 0;
   err = -EINVAL;
   break;
  }






  if (err) {
   break;
  }




  c2_wr_set_flags(&wr, flags);




  spin_lock_irqsave(&qp->lock, lock_flags);
  err = qp_wr_post(&qp->sq_mq, &wr, qp, msg_size);
  if (err) {
   spin_unlock_irqrestore(&qp->lock, lock_flags);
   break;
  }




  c2_activity(c2dev, qp->sq_mq.index, qp->sq_mq.hint_count);
  spin_unlock_irqrestore(&qp->lock, lock_flags);

  ib_wr = ib_wr->next;
 }

out:
 if (err)
  *bad_wr = ib_wr;
 return err;
}
