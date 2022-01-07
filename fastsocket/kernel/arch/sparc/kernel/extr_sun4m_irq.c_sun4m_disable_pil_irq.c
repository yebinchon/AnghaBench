
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mask_set; } ;


 int * cpu_pil_to_imask ;
 int sbus_writel (int ,int *) ;
 TYPE_1__* sun4m_irq_global ;

__attribute__((used)) static void sun4m_disable_pil_irq(unsigned int pil)
{
 sbus_writel(cpu_pil_to_imask[pil], &sun4m_irq_global->mask_set);
}
