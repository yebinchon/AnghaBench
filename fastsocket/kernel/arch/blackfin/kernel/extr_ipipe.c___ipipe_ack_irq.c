
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_desc {int (* ipipe_ack ) (unsigned int,struct irq_desc*) ;} ;


 int stub1 (unsigned int,struct irq_desc*) ;

__attribute__((used)) static void __ipipe_ack_irq(unsigned irq, struct irq_desc *desc)
{
 desc->ipipe_ack(irq, desc);
}
