
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nw_gpio_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;

__attribute__((used)) static inline void netwinder_lock(unsigned long *flags)
{
 spin_lock_irqsave(&nw_gpio_lock, *flags);
}
