
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {int dummy; } ;


 int SDHC1_CD ;
 int SDHC1_WP ;
 int free_irq (int ,void*) ;
 int gpio_free (int ) ;
 int gpio_to_irq (int ) ;

__attribute__((used)) static void moboard_sdhc1_exit(struct device *dev, void *data)
{
 free_irq(gpio_to_irq(SDHC1_CD), data);
 gpio_free(SDHC1_WP);
 gpio_free(SDHC1_CD);
}
