
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct as_io_context {int dummy; } ;


 int as_ioc_count ;
 int complete (int *) ;
 int elv_ioc_count_dec (int ) ;
 int elv_ioc_count_read (int ) ;
 int * ioc_gone ;
 int ioc_gone_lock ;
 int kfree (struct as_io_context*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static void free_as_io_context(struct as_io_context *aic)
{
 kfree(aic);
 elv_ioc_count_dec(as_ioc_count);
 if (ioc_gone) {





  spin_lock(&ioc_gone_lock);
  if (ioc_gone && !elv_ioc_count_read(as_ioc_count)) {
   complete(ioc_gone);
   ioc_gone = ((void*)0);
  }
  spin_unlock(&ioc_gone_lock);
 }
}
