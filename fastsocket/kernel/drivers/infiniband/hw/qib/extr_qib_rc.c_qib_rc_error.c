
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int qp_context; int (* event_handler ) (struct ib_event*,int ) ;int device; } ;
struct qib_qp {TYPE_2__ ibqp; int s_lock; } ;
struct TYPE_3__ {TYPE_2__* qp; } ;
struct ib_event {int event; TYPE_1__ element; int device; } ;
typedef enum ib_wc_status { ____Placeholder_ib_wc_status } ib_wc_status ;


 int IB_EVENT_QP_LAST_WQE_REACHED ;
 int qib_error_qp (struct qib_qp*,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 (struct ib_event*,int ) ;

void qib_rc_error(struct qib_qp *qp, enum ib_wc_status err)
{
 unsigned long flags;
 int lastwqe;

 spin_lock_irqsave(&qp->s_lock, flags);
 lastwqe = qib_error_qp(qp, err);
 spin_unlock_irqrestore(&qp->s_lock, flags);

 if (lastwqe) {
  struct ib_event ev;

  ev.device = qp->ibqp.device;
  ev.element.qp = &qp->ibqp;
  ev.event = IB_EVENT_QP_LAST_WQE_REACHED;
  qp->ibqp.event_handler(&ev, qp->ibqp.qp_context);
 }
}
