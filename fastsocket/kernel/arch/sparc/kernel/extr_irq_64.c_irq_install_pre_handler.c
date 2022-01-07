
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct irq_handler_data {void (* pre_handler ) (unsigned int,void*,void*) ;void* arg2; void* arg1; } ;
struct irq_desc {int handle_irq; } ;


 struct irq_handler_data* get_irq_chip_data (int) ;
 struct irq_desc* irq_desc ;
 int pre_flow_handler ;

void irq_install_pre_handler(int virt_irq,
        void (*func)(unsigned int, void *, void *),
        void *arg1, void *arg2)
{
 struct irq_handler_data *data = get_irq_chip_data(virt_irq);
 struct irq_desc *desc = irq_desc + virt_irq;

 data->pre_handler = func;
 data->arg1 = arg1;
 data->arg2 = arg2;

 desc->handle_irq = pre_flow_handler;
}
