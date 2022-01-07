
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mce_info {unsigned long paddr; int restartable; } ;


 int MCE_VECTOR ;
 int MF_ACTION_REQUIRED ;
 int MF_MUST_KILL ;
 unsigned long PAGE_SHIFT ;
 int SIGBUS ;
 int TIF_MCE_NOTIFY ;
 int clear_thread_flag (int ) ;
 int current ;
 int force_sig (int ,int ) ;
 int mce_clear_info (struct mce_info*) ;
 struct mce_info* mce_find_info () ;
 int mce_panic (char*,int *,int *) ;
 scalar_t__ memory_failure (unsigned long,int ,int) ;
 int pr_err (char*,...) ;

void mce_notify_process(void)
{
 unsigned long pfn;
 struct mce_info *mi = mce_find_info();
 int flags = MF_ACTION_REQUIRED;

 if (!mi)
  mce_panic("Lost physical address for unconsumed uncorrectable error", ((void*)0), ((void*)0));
 pfn = mi->paddr >> PAGE_SHIFT;

 clear_thread_flag(TIF_MCE_NOTIFY);

 pr_err("Uncorrected hardware memory error in user-access at %llx",
   mi->paddr);





 if (!mi->restartable)
  flags |= MF_MUST_KILL;
 if (memory_failure(pfn, MCE_VECTOR, flags) < 0) {
  pr_err("Memory error not recovered");
  force_sig(SIGBUS, current);
 }
 mce_clear_info(mi);
}
