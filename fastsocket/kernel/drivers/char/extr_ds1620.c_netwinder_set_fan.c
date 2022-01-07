
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GPIO_FAN ;
 int nw_gpio_lock ;
 int nw_gpio_modify_op (int ,int ) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static inline void netwinder_set_fan(int i)
{
 unsigned long flags;

 spin_lock_irqsave(&nw_gpio_lock, flags);
 nw_gpio_modify_op(GPIO_FAN, i ? GPIO_FAN : 0);
 spin_unlock_irqrestore(&nw_gpio_lock, flags);
}
