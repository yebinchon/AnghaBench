
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hubdev_info {int dummy; } ;


 int IRQF_SHARED ;
 int SGI_TIO_ERROR ;
 scalar_t__ hub_eint_handler ;
 int printk (char*,struct hubdev_info*) ;
 scalar_t__ request_irq (int ,void*,int ,char*,void*) ;
 int sn_set_err_irq_affinity (int ) ;

void ice_error_init(struct hubdev_info *hubdev_info)
{

        if (request_irq
            (SGI_TIO_ERROR, (void *)hub_eint_handler, IRQF_SHARED, "SN_TIO_error",
             (void *)hubdev_info)) {
                printk("ice_error_init: request_irq() error hubdev_info 0x%p\n",
                       hubdev_info);
  return;
 }
 sn_set_err_irq_affinity(SGI_TIO_ERROR);
}
