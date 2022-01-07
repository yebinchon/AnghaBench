
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ipath_devdata {int ipath_sdma_lock; int ipath_sdma_status; TYPE_1__* ipath_kregs; } ;
typedef int ipath_err_t ;
struct TYPE_2__ {int kr_senddmalengen; int kr_senddmastatus; int kr_senddmahead; int kr_senddmatail; } ;


 int INFINIPATH_E_SDMAERRS ;
 int IPATH_SDMA_ABORTING ;
 int IPATH_SDMA_DISABLED ;
 int VERBOSE ;
 int __IPATH_DBG ;
 int __IPATH_VERBDBG ;
 int __set_bit (int ,int *) ;
 int ipath_cancel_sends (struct ipath_devdata*,int) ;
 int ipath_cdbg (int ,char*,unsigned long,unsigned long,unsigned long,unsigned long) ;
 int ipath_dbg (char*,unsigned long,char*) ;
 int ipath_debug ;
 int ipath_decode_err (struct ipath_devdata*,char*,int,int) ;
 unsigned long ipath_read_kreg64 (struct ipath_devdata*,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void handle_sdma_errors(struct ipath_devdata *dd, ipath_err_t errs)
{
 unsigned long flags;
 int expected;

 if (ipath_debug & __IPATH_DBG) {
  char msg[128];
  ipath_decode_err(dd, msg, sizeof msg, errs &
   INFINIPATH_E_SDMAERRS);
  ipath_dbg("errors %lx (%s)\n", (unsigned long)errs, msg);
 }
 if (ipath_debug & __IPATH_VERBDBG) {
  unsigned long tl, hd, status, lengen;
  tl = ipath_read_kreg64(dd, dd->ipath_kregs->kr_senddmatail);
  hd = ipath_read_kreg64(dd, dd->ipath_kregs->kr_senddmahead);
  status = ipath_read_kreg64(dd
   , dd->ipath_kregs->kr_senddmastatus);
  lengen = ipath_read_kreg64(dd,
   dd->ipath_kregs->kr_senddmalengen);
  ipath_cdbg(VERBOSE, "sdma tl 0x%lx hd 0x%lx status 0x%lx "
   "lengen 0x%lx\n", tl, hd, status, lengen);
 }

 spin_lock_irqsave(&dd->ipath_sdma_lock, flags);
 __set_bit(IPATH_SDMA_DISABLED, &dd->ipath_sdma_status);
 expected = test_bit(IPATH_SDMA_ABORTING, &dd->ipath_sdma_status);
 spin_unlock_irqrestore(&dd->ipath_sdma_lock, flags);
 if (!expected)
  ipath_cancel_sends(dd, 1);
}
