
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ioc3_submodule {unsigned int irq_mask; } ;
struct ioc3_driver_data {TYPE_1__* vma; } ;
struct TYPE_2__ {int sio_ir; } ;


 int writel (unsigned int,int *) ;

void ioc3_ack(struct ioc3_submodule *is, struct ioc3_driver_data *idd,
    unsigned int irqs)
{
 writel(irqs & is->irq_mask, &idd->vma->sio_ir);
}
