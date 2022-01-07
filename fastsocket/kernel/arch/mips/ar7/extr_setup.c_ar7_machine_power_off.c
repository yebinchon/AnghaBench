
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int AR7_REGS_POWER ;
 int ar7_machine_halt () ;
 scalar_t__ ioremap (int ,int) ;
 int readl (int*) ;
 int writel (int,int*) ;

__attribute__((used)) static void ar7_machine_power_off(void)
{
 u32 *power_reg = (u32 *)ioremap(AR7_REGS_POWER, 1);
 u32 power_state = readl(power_reg) | (3 << 30);
 writel(power_state, power_reg);
 ar7_machine_halt();
}
