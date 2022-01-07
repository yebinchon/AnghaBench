
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int IRQ_GPIOE (int) ;
 int free_irq (int ,void*) ;

__attribute__((used)) static void mx27ads_sdhc1_exit(struct device *dev, void *data)
{
 free_irq(IRQ_GPIOE(21), data);
}
