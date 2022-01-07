
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IRQ_EB11MP_PMU_CPU0 ;
 int IRQ_EB11MP_PMU_CPU1 ;
 int IRQ_EB11MP_PMU_CPU2 ;
 int IRQ_EB11MP_PMU_CPU3 ;
 int IRQ_EB11MP_PMU_SCU0 ;
 int IRQ_EB11MP_PMU_SCU1 ;
 int IRQ_EB11MP_PMU_SCU2 ;
 int IRQ_EB11MP_PMU_SCU3 ;
 int IRQ_EB11MP_PMU_SCU4 ;
 int IRQ_EB11MP_PMU_SCU5 ;
 int IRQ_EB11MP_PMU_SCU6 ;
 int IRQ_EB11MP_PMU_SCU7 ;
 int em_route_irq (int ,int) ;

__attribute__((used)) static int em_setup(void)
{



 em_route_irq(IRQ_EB11MP_PMU_SCU0, 0);
 em_route_irq(IRQ_EB11MP_PMU_SCU1, 0);
 em_route_irq(IRQ_EB11MP_PMU_SCU2, 1);
 em_route_irq(IRQ_EB11MP_PMU_SCU3, 1);
 em_route_irq(IRQ_EB11MP_PMU_SCU4, 2);
 em_route_irq(IRQ_EB11MP_PMU_SCU5, 2);
 em_route_irq(IRQ_EB11MP_PMU_SCU6, 3);
 em_route_irq(IRQ_EB11MP_PMU_SCU7, 3);




 em_route_irq(IRQ_EB11MP_PMU_CPU0, 0);
 em_route_irq(IRQ_EB11MP_PMU_CPU1, 1);
 em_route_irq(IRQ_EB11MP_PMU_CPU2, 2);
 em_route_irq(IRQ_EB11MP_PMU_CPU3, 3);

 return 0;
}
