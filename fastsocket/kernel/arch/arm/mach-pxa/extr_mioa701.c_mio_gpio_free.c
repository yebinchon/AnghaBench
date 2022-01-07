
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gpio_ress {int gpio; } ;


 int gpio_free (int ) ;

__attribute__((used)) static void mio_gpio_free(struct gpio_ress *gpios, int size)
{
 int i;

 for (i = 0; i < size; i++)
  gpio_free(gpios[i].gpio);
}
