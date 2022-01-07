
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipath_devdata {int ipath_flags; int verbs_dev; int ipath_sendctrl_lock; TYPE_1__* ipath_kregs; int ipath_sendctrl; int ipath_sdma_status; int ipath_sdma_lock; } ;
struct TYPE_2__ {int kr_scratch; int kr_sendctrl; } ;


 int INFINIPATH_S_SDMAENABLE ;
 int IPATH_HAS_SEND_DMA ;
 int IPATH_SDMA_ABORTING ;
 int IPATH_SDMA_DISABLED ;
 int IPATH_SDMA_DISARMED ;
 int IPATH_SDMA_RUNNING ;
 int IPATH_SDMA_SHUTDOWN ;
 int __clear_bit (int ,int *) ;
 int ipath_dbg (char*,int ) ;
 int ipath_ib_piobufavail (int ) ;
 int ipath_read_kreg64 (struct ipath_devdata*,int ) ;
 int ipath_write_kreg (struct ipath_devdata*,int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ test_bit (int ,int *) ;

void ipath_restart_sdma(struct ipath_devdata *dd)
{
 unsigned long flags;
 int needed = 1;

 if (!(dd->ipath_flags & IPATH_HAS_SEND_DMA))
  goto bail;






 spin_lock_irqsave(&dd->ipath_sdma_lock, flags);
 if (!test_bit(IPATH_SDMA_RUNNING, &dd->ipath_sdma_status)
  || test_bit(IPATH_SDMA_SHUTDOWN, &dd->ipath_sdma_status))
   needed = 0;
 else {
  __clear_bit(IPATH_SDMA_DISABLED, &dd->ipath_sdma_status);
  __clear_bit(IPATH_SDMA_DISARMED, &dd->ipath_sdma_status);
  __clear_bit(IPATH_SDMA_ABORTING, &dd->ipath_sdma_status);
 }
 spin_unlock_irqrestore(&dd->ipath_sdma_lock, flags);
 if (!needed) {
  ipath_dbg("invalid attempt to restart SDMA, status 0x%08lx\n",
   dd->ipath_sdma_status);
  goto bail;
 }
 spin_lock_irqsave(&dd->ipath_sendctrl_lock, flags);




 dd->ipath_sendctrl &= ~INFINIPATH_S_SDMAENABLE;
 ipath_write_kreg(dd, dd->ipath_kregs->kr_sendctrl, dd->ipath_sendctrl);
 ipath_read_kreg64(dd, dd->ipath_kregs->kr_scratch);
 dd->ipath_sendctrl |= INFINIPATH_S_SDMAENABLE;
 ipath_write_kreg(dd, dd->ipath_kregs->kr_sendctrl, dd->ipath_sendctrl);
 ipath_read_kreg64(dd, dd->ipath_kregs->kr_scratch);
 spin_unlock_irqrestore(&dd->ipath_sendctrl_lock, flags);


 ipath_ib_piobufavail(dd->verbs_dev);

bail:
 return;
}
