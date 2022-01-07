
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_XIRQ2_LEVEL ;
 unsigned long imask ;

__attribute__((used)) static void mb93093_power_switch_setup(void)
{

 imask = *(volatile unsigned long *)0xfeff9820;
 *(volatile unsigned long *)0xfeff9820 = ~(1 << (IRQ_XIRQ2_LEVEL + 16)) & 0xfffe0000;
}
