
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CP_INTC_SYS_ENABLE_IDX_SET ;
 int cp_intc_write (unsigned int,int ) ;

__attribute__((used)) static void cp_intc_unmask_irq(unsigned int irq)
{
 cp_intc_write(irq, CP_INTC_SYS_ENABLE_IDX_SET);
}
