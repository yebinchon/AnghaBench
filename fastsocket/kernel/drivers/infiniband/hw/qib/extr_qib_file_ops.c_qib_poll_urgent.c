
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int uctxt_lock; } ;
struct qib_ctxtdata {scalar_t__ urgent; scalar_t__ urgent_poll; int flag; int wait; struct qib_devdata* dd; } ;
struct poll_table_struct {int dummy; } ;
struct file {int dummy; } ;


 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 int QIB_CTXT_WAITING_URG ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static unsigned int qib_poll_urgent(struct qib_ctxtdata *rcd,
        struct file *fp,
        struct poll_table_struct *pt)
{
 struct qib_devdata *dd = rcd->dd;
 unsigned pollflag;

 poll_wait(fp, &rcd->wait, pt);

 spin_lock_irq(&dd->uctxt_lock);
 if (rcd->urgent != rcd->urgent_poll) {
  pollflag = POLLIN | POLLRDNORM;
  rcd->urgent_poll = rcd->urgent;
 } else {
  pollflag = 0;
  set_bit(QIB_CTXT_WAITING_URG, &rcd->flag);
 }
 spin_unlock_irq(&dd->uctxt_lock);

 return pollflag;
}
