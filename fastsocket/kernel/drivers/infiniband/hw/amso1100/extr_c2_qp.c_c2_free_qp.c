
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int shared; int peer; } ;
struct TYPE_5__ {int shared; int peer; } ;
struct TYPE_4__ {int recv_cq; int send_cq; } ;
struct c2_qp {int refcount; int wait; TYPE_3__ rq_mq; TYPE_2__ sq_mq; int qpn; TYPE_1__ ibqp; } ;
struct c2_dev {int dummy; } ;
struct c2_cq {int cqn; } ;


 int atomic_dec (int *) ;
 int atomic_read (int *) ;
 int c2_cq_clean (struct c2_dev*,struct c2_qp*,int ) ;
 int c2_free_mqsp (int ) ;
 int c2_free_qpn (struct c2_dev*,int ) ;
 int c2_lock_cqs (struct c2_cq*,struct c2_cq*) ;
 int c2_unlock_cqs (struct c2_cq*,struct c2_cq*) ;
 int destroy_qp (struct c2_dev*,struct c2_qp*) ;
 int iounmap (int ) ;
 struct c2_cq* to_c2cq (int ) ;
 int wait_event (int ,int) ;

void c2_free_qp(struct c2_dev *c2dev, struct c2_qp *qp)
{
 struct c2_cq *send_cq;
 struct c2_cq *recv_cq;

 send_cq = to_c2cq(qp->ibqp.send_cq);
 recv_cq = to_c2cq(qp->ibqp.recv_cq);





 c2_lock_cqs(send_cq, recv_cq);
 c2_free_qpn(c2dev, qp->qpn);
 c2_unlock_cqs(send_cq, recv_cq);




 destroy_qp(c2dev, qp);




 c2_cq_clean(c2dev, qp, send_cq->cqn);
 if (send_cq != recv_cq)
  c2_cq_clean(c2dev, qp, recv_cq->cqn);




 iounmap(qp->sq_mq.peer);
 iounmap(qp->rq_mq.peer);
 c2_free_mqsp(qp->sq_mq.shared);
 c2_free_mqsp(qp->rq_mq.shared);

 atomic_dec(&qp->refcount);
 wait_event(qp->wait, !atomic_read(&qp->refcount));
}
