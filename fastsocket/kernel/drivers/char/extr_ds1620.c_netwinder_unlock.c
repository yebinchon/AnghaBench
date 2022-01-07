
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int nw_gpio_lock ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void netwinder_unlock(unsigned long *flags)
{
 spin_unlock_irqrestore(&nw_gpio_lock, *flags);
}
