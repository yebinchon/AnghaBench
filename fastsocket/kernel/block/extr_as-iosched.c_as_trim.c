
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct io_context {int lock; int * aic; } ;


 int free_as_io_context (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

__attribute__((used)) static void as_trim(struct io_context *ioc)
{
 spin_lock_irq(&ioc->lock);
 if (ioc->aic)
  free_as_io_context(ioc->aic);
 ioc->aic = ((void*)0);
 spin_unlock_irq(&ioc->lock);
}
