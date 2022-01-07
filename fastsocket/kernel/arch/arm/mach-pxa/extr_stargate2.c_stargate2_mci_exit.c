
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int IRQ_GPIO (int ) ;
 int SG2_GPIO_nSD_DETECT ;
 int SG2_SD_POWER_ENABLE ;
 int free_irq (int ,void*) ;
 int gpio_free (int ) ;

__attribute__((used)) static void stargate2_mci_exit(struct device *dev, void *data)
{
 free_irq(IRQ_GPIO(SG2_GPIO_nSD_DETECT), data);
 gpio_free(SG2_SD_POWER_ENABLE);
 gpio_free(SG2_GPIO_nSD_DETECT);
}
