
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long __irq_mask ;

__attribute__((used)) static void __default_power_switch_cleanup(void)
{
 *(unsigned long *)0xfeff9820 = __irq_mask;
}
