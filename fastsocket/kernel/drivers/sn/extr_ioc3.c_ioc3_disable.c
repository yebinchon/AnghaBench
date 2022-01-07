
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ioc3_submodule {unsigned int irq_mask; } ;
struct ioc3_driver_data {int dummy; } ;


 int IOC3_W_IEC ;
 int write_ireg (struct ioc3_driver_data*,unsigned int,int ) ;

void ioc3_disable(struct ioc3_submodule *is,
    struct ioc3_driver_data *idd, unsigned int irqs)
{
 write_ireg(idd, irqs & is->irq_mask, IOC3_W_IEC);
}
