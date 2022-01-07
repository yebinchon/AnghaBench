
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int IRQ_GPIOD (int) ;
 int free_irq (int ,void*) ;

__attribute__((used)) static void mx21ads_sdhc_exit(struct device *dev, void *data)
{
 free_irq(IRQ_GPIOD(25), data);
}
