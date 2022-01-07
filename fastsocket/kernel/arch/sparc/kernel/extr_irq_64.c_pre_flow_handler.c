
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct irq_handler_data {int arg2; int arg1; int (* pre_handler ) (unsigned int,int ,int ) ;} ;
struct irq_desc {int dummy; } ;
struct TYPE_2__ {unsigned int dev_ino; } ;


 struct irq_handler_data* get_irq_chip_data (unsigned int) ;
 int handle_fasteoi_irq (unsigned int,struct irq_desc*) ;
 int stub1 (unsigned int,int ,int ) ;
 TYPE_1__* virt_irq_table ;

__attribute__((used)) static void pre_flow_handler(unsigned int virt_irq,
          struct irq_desc *desc)
{
 struct irq_handler_data *data = get_irq_chip_data(virt_irq);
 unsigned int ino = virt_irq_table[virt_irq].dev_ino;

 data->pre_handler(ino, data->arg1, data->arg2);

 handle_fasteoi_irq(virt_irq, desc);
}
