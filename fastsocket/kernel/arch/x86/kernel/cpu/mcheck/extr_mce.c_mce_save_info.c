
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mce_info {int restartable; int paddr; int t; int inuse; } ;
typedef int __u64 ;


 size_t MCE_INFO_MAX ;
 scalar_t__ atomic_cmpxchg (int *,int ,int) ;
 int current ;
 struct mce_info* mce_info ;
 int mce_panic (char*,int *,int *) ;

__attribute__((used)) static void mce_save_info(__u64 addr, int c)
{
 struct mce_info *mi;

 for (mi = mce_info; mi < &mce_info[MCE_INFO_MAX]; mi++) {
  if (atomic_cmpxchg(&mi->inuse, 0, 1) == 0) {
   mi->t = current;
   mi->paddr = addr;
   mi->restartable = c;
   return;
  }
 }

 mce_panic("Too many concurrent recoverable errors", ((void*)0), ((void*)0));
}
