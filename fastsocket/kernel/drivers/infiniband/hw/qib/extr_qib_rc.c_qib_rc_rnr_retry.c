
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_qp {int s_flags; int s_lock; int s_timer; } ;


 int QIB_S_WAIT_RNR ;
 int del_timer (int *) ;
 int qib_schedule_send (struct qib_qp*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void qib_rc_rnr_retry(unsigned long arg)
{
 struct qib_qp *qp = (struct qib_qp *)arg;
 unsigned long flags;

 spin_lock_irqsave(&qp->s_lock, flags);
 if (qp->s_flags & QIB_S_WAIT_RNR) {
  qp->s_flags &= ~QIB_S_WAIT_RNR;
  del_timer(&qp->s_timer);
  qib_schedule_send(qp);
 }
 spin_unlock_irqrestore(&qp->s_lock, flags);
}
