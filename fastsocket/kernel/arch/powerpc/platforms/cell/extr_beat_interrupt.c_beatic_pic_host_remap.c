
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_host {int dummy; } ;
typedef int irq_hw_number_t ;


 int beat_construct_and_connect_irq_plug (unsigned int,int ) ;

__attribute__((used)) static void beatic_pic_host_remap(struct irq_host *h, unsigned int virq,
          irq_hw_number_t hw)
{
 beat_construct_and_connect_irq_plug(virq, hw);
}
