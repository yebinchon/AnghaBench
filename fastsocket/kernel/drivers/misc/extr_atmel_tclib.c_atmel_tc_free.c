
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atmel_tc {int * iomem; int * regs; } ;


 int iounmap (int *) ;
 int release_resource (int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int tc_list_lock ;

void atmel_tc_free(struct atmel_tc *tc)
{
 spin_lock(&tc_list_lock);
 if (tc->regs) {
  iounmap(tc->regs);
  release_resource(tc->iomem);
  tc->regs = ((void*)0);
  tc->iomem = ((void*)0);
 }
 spin_unlock(&tc_list_lock);
}
