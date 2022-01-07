
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long imask ;

__attribute__((used)) static void mb93093_power_switch_cleanup(void)
{
 *(volatile unsigned long *)0xfeff9820 = imask;
}
