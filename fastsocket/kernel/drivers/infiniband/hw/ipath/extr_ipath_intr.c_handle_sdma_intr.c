
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct ipath_devdata {int ipath_sdma_abort_task; int ipath_sdma_status; int ipath_sdma_lock; } ;


 int INFINIPATH_I_SDMADISABLED ;
 int INFINIPATH_I_SDMAINT ;
 int IPATH_SDMA_ABORTING ;
 int IPATH_SDMA_DISABLED ;
 int IPATH_SDMA_SHUTDOWN ;
 int __set_bit (int ,int *) ;
 int ipath_cancel_sends (struct ipath_devdata*,int) ;
 int ipath_dbg (char*,char*) ;
 int ipath_sdma_intr (struct ipath_devdata*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int tasklet_hi_schedule (int *) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void handle_sdma_intr(struct ipath_devdata *dd, u64 istat)
{
 unsigned long flags;
 int expected;

 if ((istat & INFINIPATH_I_SDMAINT) &&
     !test_bit(IPATH_SDMA_SHUTDOWN, &dd->ipath_sdma_status))
  ipath_sdma_intr(dd);

 if (istat & INFINIPATH_I_SDMADISABLED) {
  expected = test_bit(IPATH_SDMA_ABORTING,
   &dd->ipath_sdma_status);
  ipath_dbg("%s SDmaDisabled intr\n",
   expected ? "expected" : "unexpected");
  spin_lock_irqsave(&dd->ipath_sdma_lock, flags);
  __set_bit(IPATH_SDMA_DISABLED, &dd->ipath_sdma_status);
  spin_unlock_irqrestore(&dd->ipath_sdma_lock, flags);
  if (!expected)
   ipath_cancel_sends(dd, 1);
  if (!test_bit(IPATH_SDMA_SHUTDOWN, &dd->ipath_sdma_status))
   tasklet_hi_schedule(&dd->ipath_sdma_abort_task);
 }
}
