
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct srp_target_port {struct ib_qp* send_cq; struct ib_qp* recv_cq; struct ib_qp* qp; TYPE_3__* srp_host; } ;
struct TYPE_4__ {int max_recv_sge; int max_send_sge; void* max_recv_wr; void* max_send_wr; } ;
struct ib_qp_init_attr {struct ib_qp* recv_cq; struct ib_qp* send_cq; int qp_type; int sq_sig_type; TYPE_1__ cap; int event_handler; } ;
struct ib_qp {int dummy; } ;
typedef struct ib_qp ib_cq ;
struct TYPE_6__ {TYPE_2__* srp_dev; } ;
struct TYPE_5__ {int pd; int dev; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int IB_CQ_NEXT_COMP ;
 int IB_QPT_RC ;
 int IB_SIGNAL_ALL_WR ;
 scalar_t__ IS_ERR (struct ib_qp*) ;
 int PTR_ERR (struct ib_qp*) ;
 void* SRP_RQ_SIZE ;
 void* SRP_SQ_SIZE ;
 struct ib_qp* ib_create_cq (int ,int ,int *,struct srp_target_port*,void*,int ) ;
 struct ib_qp* ib_create_qp (int ,struct ib_qp_init_attr*) ;
 int ib_destroy_cq (struct ib_qp*) ;
 int ib_destroy_qp (struct ib_qp*) ;
 int ib_req_notify_cq (struct ib_qp*,int ) ;
 int kfree (struct ib_qp_init_attr*) ;
 struct ib_qp_init_attr* kzalloc (int,int ) ;
 int srp_init_qp (struct srp_target_port*,struct ib_qp*) ;
 int srp_qp_event ;
 int srp_recv_completion ;
 int srp_send_completion ;

__attribute__((used)) static int srp_create_target_ib(struct srp_target_port *target)
{
 struct ib_qp_init_attr *init_attr;
 struct ib_cq *recv_cq, *send_cq;
 struct ib_qp *qp;
 int ret;

 init_attr = kzalloc(sizeof *init_attr, GFP_KERNEL);
 if (!init_attr)
  return -ENOMEM;

 recv_cq = ib_create_cq(target->srp_host->srp_dev->dev,
          srp_recv_completion, ((void*)0), target, SRP_RQ_SIZE, 0);
 if (IS_ERR(recv_cq)) {
  ret = PTR_ERR(recv_cq);
  goto err;
 }

 send_cq = ib_create_cq(target->srp_host->srp_dev->dev,
          srp_send_completion, ((void*)0), target, SRP_SQ_SIZE, 0);
 if (IS_ERR(send_cq)) {
  ret = PTR_ERR(send_cq);
  goto err_recv_cq;
 }

 ib_req_notify_cq(recv_cq, IB_CQ_NEXT_COMP);

 init_attr->event_handler = srp_qp_event;
 init_attr->cap.max_send_wr = SRP_SQ_SIZE;
 init_attr->cap.max_recv_wr = SRP_RQ_SIZE;
 init_attr->cap.max_recv_sge = 1;
 init_attr->cap.max_send_sge = 1;
 init_attr->sq_sig_type = IB_SIGNAL_ALL_WR;
 init_attr->qp_type = IB_QPT_RC;
 init_attr->send_cq = send_cq;
 init_attr->recv_cq = recv_cq;

 qp = ib_create_qp(target->srp_host->srp_dev->pd, init_attr);
 if (IS_ERR(qp)) {
  ret = PTR_ERR(qp);
  goto err_send_cq;
 }

 ret = srp_init_qp(target, qp);
 if (ret)
  goto err_qp;

 if (target->qp)
  ib_destroy_qp(target->qp);
 if (target->recv_cq)
  ib_destroy_cq(target->recv_cq);
 if (target->send_cq)
  ib_destroy_cq(target->send_cq);

 target->qp = qp;
 target->recv_cq = recv_cq;
 target->send_cq = send_cq;

 kfree(init_attr);
 return 0;

err_qp:
 ib_destroy_qp(qp);

err_send_cq:
 ib_destroy_cq(send_cq);

err_recv_cq:
 ib_destroy_cq(recv_cq);

err:
 kfree(init_attr);
 return ret;
}
