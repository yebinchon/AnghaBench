
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u64 ;
typedef scalar_t__ u32 ;
struct ipath_devdata {scalar_t__ ipath_int_counter; int ipath_flags; int ipath_i_bitsextant; scalar_t__ ipath_gpio_mask; unsigned long long ipath_i_rcvavail_shift; unsigned long long ipath_i_rcvurg_shift; int ipath_i_rcvavail_mask; int ipath_i_rcvurg_mask; int ipath_sendctrl; int ipath_sendctrl_lock; TYPE_2__* ipath_kregs; int * ipath_pd; int ipath_lli_errs; int ipath_overrun_thresh_errs; int ipath_rxfc_unsupvl_errs; TYPE_1__* pcidev; } ;
typedef int irqreturn_t ;
typedef long long ipath_err_t ;
struct TYPE_6__ {int sps_errints; int sps_nullintr; int sps_ints; } ;
struct TYPE_5__ {int kr_scratch; int kr_sendctrl; int kr_intclear; int kr_gpio_clear; int kr_gpio_mask; int kr_gpio_status; int kr_errorstatus; int kr_intstatus; } ;
struct TYPE_4__ {int dev; } ;


 int INFINIPATH_I_ERROR ;
 int INFINIPATH_I_GPIO ;
 int INFINIPATH_I_SDMADISABLED ;
 int INFINIPATH_I_SDMAINT ;
 int INFINIPATH_I_SPIOBUFAVAIL ;
 int INFINIPATH_S_PIOINTBUFAVAIL ;
 int IPATH_GPIO_ERRINTRS ;
 scalar_t__ IPATH_GPIO_ERRINTR_MASK ;
 int IPATH_GPIO_INTR ;
 int IPATH_GPIO_LLI_BIT ;
 int IPATH_GPIO_OVRUN_BIT ;
 int IPATH_GPIO_PORT0_BIT ;
 int IPATH_GPIO_RXUVL_BIT ;
 int IPATH_INITTED ;
 int IPATH_PRESENT ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 int VERBOSE ;
 int dev_info (int *,char*,unsigned long long) ;
 int handle_errors (struct ipath_devdata*,long long) ;
 int handle_layer_pioavail (struct ipath_devdata*) ;
 int handle_sdma_intr (struct ipath_devdata*,int) ;
 int handle_urcv (struct ipath_devdata*,int) ;
 int ipath_bad_intr (struct ipath_devdata*,unsigned int*) ;
 int ipath_bad_regread (struct ipath_devdata*) ;
 int ipath_cdbg (int ,char*,unsigned long long) ;
 int ipath_dbg (char*,...) ;
 int ipath_dev_err (struct ipath_devdata*,char*,...) ;
 int ipath_kreceive (int ) ;
 int ipath_read_ireg (struct ipath_devdata*,int ) ;
 scalar_t__ ipath_read_kreg32 (struct ipath_devdata*,int ) ;
 long long ipath_read_kreg64 (struct ipath_devdata*,int ) ;
 TYPE_3__ ipath_stats ;
 int ipath_write_kreg (struct ipath_devdata*,int ,int) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 scalar_t__ unlikely (int) ;

irqreturn_t ipath_intr(int irq, void *data)
{
 struct ipath_devdata *dd = data;
 u64 istat, chk0rcv = 0;
 ipath_err_t estat = 0;
 irqreturn_t ret;
 static unsigned unexpected = 0;
 u64 kportrbits;

 ipath_stats.sps_ints++;

 if (dd->ipath_int_counter != (u32) -1)
  dd->ipath_int_counter++;

 if (!(dd->ipath_flags & IPATH_PRESENT)) {






  return IRQ_HANDLED;
 }
 if (!(dd->ipath_flags & IPATH_INITTED)) {
  ipath_bad_intr(dd, &unexpected);
  ret = IRQ_NONE;
  goto bail;
 }

 istat = ipath_read_ireg(dd, dd->ipath_kregs->kr_intstatus);

 if (unlikely(!istat)) {
  ipath_stats.sps_nullintr++;
  ret = IRQ_NONE;
  goto bail;
 }
 if (unlikely(istat == -1)) {
  ipath_bad_regread(dd);

  ret = IRQ_NONE;
  goto bail;
 }

 if (unexpected)
  unexpected = 0;

 if (unlikely(istat & ~dd->ipath_i_bitsextant))
  ipath_dev_err(dd,
         "interrupt with unknown interrupts %Lx set\n",
         (unsigned long long)
         istat & ~dd->ipath_i_bitsextant);
 else if (istat & ~INFINIPATH_I_ERROR)
  ipath_cdbg(VERBOSE, "intr stat=0x%Lx\n",
   (unsigned long long) istat);

 if (istat & INFINIPATH_I_ERROR) {
  ipath_stats.sps_errints++;
  estat = ipath_read_kreg64(dd,
       dd->ipath_kregs->kr_errorstatus);
  if (!estat)
   dev_info(&dd->pcidev->dev, "error interrupt (%Lx), "
     "but no error bits set!\n",
     (unsigned long long) istat);
  else if (estat == -1LL)




   ipath_dev_err(dd, "Read of error status failed "
          "(all bits set); ignoring\n");
  else
   chk0rcv |= handle_errors(dd, estat);
 }

 if (istat & INFINIPATH_I_GPIO) {
  u32 gpiostatus;
  u32 to_clear = 0;

  gpiostatus = ipath_read_kreg32(
   dd, dd->ipath_kregs->kr_gpio_status);

  if ((gpiostatus & IPATH_GPIO_ERRINTR_MASK) &&
      (dd->ipath_flags & IPATH_GPIO_ERRINTRS)) {

   to_clear |= (gpiostatus & IPATH_GPIO_ERRINTR_MASK);





   if (gpiostatus & (1 << IPATH_GPIO_RXUVL_BIT)) {
    ipath_dbg("FlowCtl on UnsupVL\n");
    dd->ipath_rxfc_unsupvl_errs++;
   }
   if (gpiostatus & (1 << IPATH_GPIO_OVRUN_BIT)) {
    ipath_dbg("Overrun Threshold exceeded\n");
    dd->ipath_overrun_thresh_errs++;
   }
   if (gpiostatus & (1 << IPATH_GPIO_LLI_BIT)) {
    ipath_dbg("Local Link Integrity error\n");
    dd->ipath_lli_errs++;
   }
   gpiostatus &= ~IPATH_GPIO_ERRINTR_MASK;
  }

  if ((gpiostatus & (1 << IPATH_GPIO_PORT0_BIT)) &&
      (dd->ipath_flags & IPATH_GPIO_INTR)) {







   to_clear |= (1 << IPATH_GPIO_PORT0_BIT);
   gpiostatus &= ~(1 << IPATH_GPIO_PORT0_BIT);
   chk0rcv = 1;
  }
  if (gpiostatus) {






   const u32 mask = (u32) dd->ipath_gpio_mask;

   if (mask & gpiostatus) {
    ipath_dbg("Unexpected GPIO IRQ bits %x\n",
      gpiostatus & mask);
    to_clear |= (gpiostatus & mask);
    dd->ipath_gpio_mask &= ~(gpiostatus & mask);
    ipath_write_kreg(dd,
     dd->ipath_kregs->kr_gpio_mask,
     dd->ipath_gpio_mask);
   }
  }
  if (to_clear) {
   ipath_write_kreg(dd, dd->ipath_kregs->kr_gpio_clear,
     (u64) to_clear);
  }
 }
 ipath_write_kreg(dd, dd->ipath_kregs->kr_intclear, istat);







 kportrbits = (1ULL << dd->ipath_i_rcvavail_shift) |
  (1ULL << dd->ipath_i_rcvurg_shift);
 if (chk0rcv || (istat & kportrbits)) {
  istat &= ~kportrbits;
  ipath_kreceive(dd->ipath_pd[0]);
 }

 if (istat & ((dd->ipath_i_rcvavail_mask << dd->ipath_i_rcvavail_shift) |
       (dd->ipath_i_rcvurg_mask << dd->ipath_i_rcvurg_shift)))
  handle_urcv(dd, istat);

 if (istat & (INFINIPATH_I_SDMAINT | INFINIPATH_I_SDMADISABLED))
  handle_sdma_intr(dd, istat);

 if (istat & INFINIPATH_I_SPIOBUFAVAIL) {
  unsigned long flags;

  spin_lock_irqsave(&dd->ipath_sendctrl_lock, flags);
  dd->ipath_sendctrl &= ~INFINIPATH_S_PIOINTBUFAVAIL;
  ipath_write_kreg(dd, dd->ipath_kregs->kr_sendctrl,
     dd->ipath_sendctrl);
  ipath_read_kreg64(dd, dd->ipath_kregs->kr_scratch);
  spin_unlock_irqrestore(&dd->ipath_sendctrl_lock, flags);


  handle_layer_pioavail(dd);
 }

 ret = IRQ_HANDLED;

bail:
 return ret;
}
