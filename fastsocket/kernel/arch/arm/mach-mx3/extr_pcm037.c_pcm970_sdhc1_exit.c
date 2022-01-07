
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int IOMUX_TO_IRQ (int ) ;
 int MX31_PIN_SCK6 ;
 int SDHC1_GPIO_DET ;
 int SDHC1_GPIO_WP ;
 int free_irq (int ,void*) ;
 int gpio_free (int ) ;

__attribute__((used)) static void pcm970_sdhc1_exit(struct device *dev, void *data)
{
 free_irq(IOMUX_TO_IRQ(MX31_PIN_SCK6), data);
 gpio_free(SDHC1_GPIO_DET);
 gpio_free(SDHC1_GPIO_WP);
}
