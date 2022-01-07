
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int IOMUX_TO_GPIO (int ) ;
 int IOMUX_TO_IRQ (int ) ;
 int MX31_PIN_ATA_DMACK ;
 int MX31_PIN_ATA_RESET_B ;
 int free_irq (int ,void*) ;
 int gpio_free (int ) ;

__attribute__((used)) static void armadillo5x0_sdhc1_exit(struct device *dev, void *data)
{
 free_irq(IOMUX_TO_IRQ(MX31_PIN_ATA_DMACK), data);
 gpio_free(IOMUX_TO_GPIO(MX31_PIN_ATA_DMACK));
 gpio_free(IOMUX_TO_GPIO(MX31_PIN_ATA_RESET_B));
}
