
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pcic_regs; } ;


 scalar_t__ PCI_SYS_LIMIT ;
 TYPE_1__ pcic0 ;
 int pcic_timer_dummy ;
 int readl (scalar_t__) ;

__attribute__((used)) static void pcic_clear_clock_irq(void)
{
 pcic_timer_dummy = readl(pcic0.pcic_regs+PCI_SYS_LIMIT);
}
