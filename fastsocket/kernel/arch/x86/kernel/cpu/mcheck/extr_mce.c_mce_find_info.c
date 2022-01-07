
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mce_info {scalar_t__ t; int inuse; } ;


 size_t MCE_INFO_MAX ;
 scalar_t__ atomic_read (int *) ;
 scalar_t__ current ;
 struct mce_info* mce_info ;

__attribute__((used)) static struct mce_info *mce_find_info(void)
{
 struct mce_info *mi;

 for (mi = mce_info; mi < &mce_info[MCE_INFO_MAX]; mi++)
  if (atomic_read(&mi->inuse) && mi->t == current)
   return mi;
 return ((void*)0);
}
