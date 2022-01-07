
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 scalar_t__ GPIO_PORTC ;
 int IRQ_GPIOC (int) ;
 int free_irq (int ,void*) ;
 int gpio_free (scalar_t__) ;

__attribute__((used)) static void pcm970_sdhc2_exit(struct device *dev, void *data)
{
 free_irq(IRQ_GPIOC(29), data);
 gpio_free(GPIO_PORTC + 28);
}
