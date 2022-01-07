
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_devdata {int uctxt_lock; int (* f_rcvctrl ) (int ,int ,int ) ;scalar_t__ (* f_hdrqempty ) (struct qib_ctxtdata*) ;} ;
struct qib_ctxtdata {int ctxt; int ppd; int flag; int wait; struct qib_devdata* dd; } ;
struct poll_table_struct {int dummy; } ;
struct file {int dummy; } ;


 unsigned int POLLIN ;
 unsigned int POLLRDNORM ;
 int QIB_CTXT_WAITING_RCV ;
 int QIB_RCVCTRL_INTRAVAIL_ENB ;
 int poll_wait (struct file*,int *,struct poll_table_struct*) ;
 int set_bit (int ,int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 scalar_t__ stub1 (struct qib_ctxtdata*) ;
 int stub2 (int ,int ,int ) ;

__attribute__((used)) static unsigned int qib_poll_next(struct qib_ctxtdata *rcd,
      struct file *fp,
      struct poll_table_struct *pt)
{
 struct qib_devdata *dd = rcd->dd;
 unsigned pollflag;

 poll_wait(fp, &rcd->wait, pt);

 spin_lock_irq(&dd->uctxt_lock);
 if (dd->f_hdrqempty(rcd)) {
  set_bit(QIB_CTXT_WAITING_RCV, &rcd->flag);
  dd->f_rcvctrl(rcd->ppd, QIB_RCVCTRL_INTRAVAIL_ENB, rcd->ctxt);
  pollflag = 0;
 } else
  pollflag = POLLIN | POLLRDNORM;
 spin_unlock_irq(&dd->uctxt_lock);

 return pollflag;
}
