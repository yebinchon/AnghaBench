
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ps3_private {int thread_id; int ppe_id; } ;


 struct ps3_private* get_irq_chip_data (unsigned int) ;
 int lv1_end_of_interrupt_ext (int ,int ,unsigned int) ;

__attribute__((used)) static void ps3_chip_eoi(unsigned int virq)
{
 const struct ps3_private *pd = get_irq_chip_data(virq);
 lv1_end_of_interrupt_ext(pd->ppe_id, pd->thread_id, virq);
}
