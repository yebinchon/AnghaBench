
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_host {int dummy; } ;


 int beat_destruct_irq_plug (unsigned int) ;

__attribute__((used)) static void beatic_pic_host_unmap(struct irq_host *h, unsigned int virq)
{
 beat_destruct_irq_plug(virq);
}
