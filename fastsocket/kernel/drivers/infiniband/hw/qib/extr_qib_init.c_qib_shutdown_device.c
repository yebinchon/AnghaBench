
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qib_pportdata {int lflags; int* statusp; int * qib_wq; int lflags_lock; } ;
struct qib_devdata {unsigned int num_pports; int flags; int (* f_quiet_serdes ) (struct qib_pportdata*) ;int (* f_sendctrl ) (struct qib_pportdata*,int) ;int (* f_setextled ) (struct qib_pportdata*,int ) ;struct qib_pportdata* pport; int (* f_rcvctrl ) (struct qib_pportdata*,int,int) ;int (* f_set_intr_state ) (struct qib_devdata*,int ) ;} ;


 int QIBL_LINKACTIVE ;
 int QIBL_LINKARMED ;
 int QIBL_LINKDOWN ;
 int QIBL_LINKINIT ;
 int QIBL_LINKV ;
 int QIB_HAS_SEND_DMA ;
 int QIB_INITTED ;
 int QIB_RCVCTRL_CTXT_DIS ;
 int QIB_RCVCTRL_INTRAVAIL_DIS ;
 int QIB_RCVCTRL_PKEY_ENB ;
 int QIB_RCVCTRL_TAILUPD_DIS ;
 int QIB_SENDCTRL_AVAIL_DIS ;
 int QIB_SENDCTRL_CLEAR ;
 int QIB_SENDCTRL_SEND_DIS ;
 int QIB_STATUS_IB_CONF ;
 int QIB_STATUS_IB_READY ;
 int destroy_workqueue (int *) ;
 int qib_teardown_sdma (struct qib_pportdata*) ;
 int qib_update_eeprom_log (struct qib_devdata*) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;
 int stub1 (struct qib_devdata*,int ) ;
 int stub2 (struct qib_pportdata*,int,int) ;
 int stub3 (struct qib_pportdata*,int) ;
 int stub4 (struct qib_pportdata*,int ) ;
 int stub5 (struct qib_pportdata*,int) ;
 int stub6 (struct qib_pportdata*) ;
 int udelay (int) ;

__attribute__((used)) static void qib_shutdown_device(struct qib_devdata *dd)
{
 struct qib_pportdata *ppd;
 unsigned pidx;

 for (pidx = 0; pidx < dd->num_pports; ++pidx) {
  ppd = dd->pport + pidx;

  spin_lock_irq(&ppd->lflags_lock);
  ppd->lflags &= ~(QIBL_LINKDOWN | QIBL_LINKINIT |
     QIBL_LINKARMED | QIBL_LINKACTIVE |
     QIBL_LINKV);
  spin_unlock_irq(&ppd->lflags_lock);
  *ppd->statusp &= ~(QIB_STATUS_IB_CONF | QIB_STATUS_IB_READY);
 }
 dd->flags &= ~QIB_INITTED;


 dd->f_set_intr_state(dd, 0);

 for (pidx = 0; pidx < dd->num_pports; ++pidx) {
  ppd = dd->pport + pidx;
  dd->f_rcvctrl(ppd, QIB_RCVCTRL_TAILUPD_DIS |
       QIB_RCVCTRL_CTXT_DIS |
       QIB_RCVCTRL_INTRAVAIL_DIS |
       QIB_RCVCTRL_PKEY_ENB, -1);




  dd->f_sendctrl(ppd, QIB_SENDCTRL_CLEAR);
 }





 udelay(20);

 for (pidx = 0; pidx < dd->num_pports; ++pidx) {
  ppd = dd->pport + pidx;
  dd->f_setextled(ppd, 0);

  if (dd->flags & QIB_HAS_SEND_DMA)
   qib_teardown_sdma(ppd);

  dd->f_sendctrl(ppd, QIB_SENDCTRL_AVAIL_DIS |
        QIB_SENDCTRL_SEND_DIS);




  dd->f_quiet_serdes(ppd);

  if (ppd->qib_wq) {
   destroy_workqueue(ppd->qib_wq);
   ppd->qib_wq = ((void*)0);
  }
 }

 qib_update_eeprom_log(dd);
}
