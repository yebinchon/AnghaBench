
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int device; } ;
struct qib_qp {int s_flags; int r_lock; int s_lock; scalar_t__ s_last_psn; int s_timer; int port_num; TYPE_1__ ibqp; } ;
struct qib_ibport {int n_rc_timeouts; } ;


 int QIB_S_TIMER ;
 int del_timer (int *) ;
 int qib_restart_rc (struct qib_qp*,scalar_t__,int) ;
 int qib_schedule_send (struct qib_qp*) ;
 int spin_lock (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock (int *) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 struct qib_ibport* to_iport (int ,int ) ;

__attribute__((used)) static void rc_timeout(unsigned long arg)
{
 struct qib_qp *qp = (struct qib_qp *)arg;
 struct qib_ibport *ibp;
 unsigned long flags;

 spin_lock_irqsave(&qp->r_lock, flags);
 spin_lock(&qp->s_lock);
 if (qp->s_flags & QIB_S_TIMER) {
  ibp = to_iport(qp->ibqp.device, qp->port_num);
  ibp->n_rc_timeouts++;
  qp->s_flags &= ~QIB_S_TIMER;
  del_timer(&qp->s_timer);
  qib_restart_rc(qp, qp->s_last_psn + 1, 1);
  qib_schedule_send(qp);
 }
 spin_unlock(&qp->s_lock);
 spin_unlock_irqrestore(&qp->r_lock, flags);
}
