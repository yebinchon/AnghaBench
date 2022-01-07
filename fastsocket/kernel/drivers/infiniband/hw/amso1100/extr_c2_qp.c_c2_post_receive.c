
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int context; } ;
struct TYPE_7__ {TYPE_1__ hdr; } ;
struct TYPE_8__ {TYPE_2__ user_hdr; } ;
struct TYPE_9__ {int data; TYPE_3__ rq_hdr; } ;
union c2wr {TYPE_4__ rqwr; } ;
typedef int u8 ;
typedef int u32 ;
struct ib_recv_wr {scalar_t__ num_sge; struct ib_recv_wr* next; int sg_list; int wr_id; } ;
struct ib_qp {int device; } ;
struct TYPE_10__ {int hint_count; int index; int msg_size; } ;
struct c2_qp {scalar_t__ state; scalar_t__ recv_sgl_depth; int lock; TYPE_5__ rq_mq; } ;
struct c2_dev {int dummy; } ;
struct c2_data_addr {int dummy; } ;


 int BUG_ON (int) ;
 int CCWR_RECV ;
 int EINVAL ;
 scalar_t__ IB_QPS_RTS ;
 int c2_activity (struct c2_dev*,int ,int ) ;
 int c2_wr_set_flags (union c2wr*,int ) ;
 int c2_wr_set_id (union c2wr*,int ) ;
 int c2_wr_set_sge_count (union c2wr*,int ) ;
 int move_sgl (struct c2_data_addr*,int ,int,int *,int *) ;
 int qp_wr_post (TYPE_5__*,union c2wr*,struct c2_qp*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct c2_dev* to_c2dev (int ) ;
 struct c2_qp* to_c2qp (struct ib_qp*) ;

int c2_post_receive(struct ib_qp *ibqp, struct ib_recv_wr *ib_wr,
      struct ib_recv_wr **bad_wr)
{
 struct c2_dev *c2dev = to_c2dev(ibqp->device);
 struct c2_qp *qp = to_c2qp(ibqp);
 union c2wr wr;
 unsigned long lock_flags;
 int err = 0;

 if (qp->state > IB_QPS_RTS) {
  err = -EINVAL;
  goto out;
 }




 while (ib_wr) {
  u32 tot_len;
  u8 actual_sge_count;

  if (ib_wr->num_sge > qp->recv_sgl_depth) {
   err = -EINVAL;
   break;
  }




  wr.rqwr.rq_hdr.user_hdr.hdr.context = ib_wr->wr_id;
  c2_wr_set_id(&wr, CCWR_RECV);
  c2_wr_set_flags(&wr, 0);


  BUG_ON(ib_wr->num_sge >= 256);
  err = move_sgl((struct c2_data_addr *) & (wr.rqwr.data),
          ib_wr->sg_list,
          ib_wr->num_sge, &tot_len, &actual_sge_count);
  c2_wr_set_sge_count(&wr, actual_sge_count);






  if (err) {
   break;
  }

  spin_lock_irqsave(&qp->lock, lock_flags);
  err = qp_wr_post(&qp->rq_mq, &wr, qp, qp->rq_mq.msg_size);
  if (err) {
   spin_unlock_irqrestore(&qp->lock, lock_flags);
   break;
  }




  c2_activity(c2dev, qp->rq_mq.index, qp->rq_mq.hint_count);
  spin_unlock_irqrestore(&qp->lock, lock_flags);

  ib_wr = ib_wr->next;
 }

out:
 if (err)
  *bad_wr = ib_wr;
 return err;
}
