
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct metronomefb_par {int dummy; } ;


 int ARRAY_SIZE (int *) ;
 int IRQ_GPIO (int ) ;
 int RDY_GPIO_PIN ;
 int free_irq (int ,struct metronomefb_par*) ;
 int gpio_free (int ) ;
 int * gpios ;

__attribute__((used)) static void am200_cleanup(struct metronomefb_par *par)
{
 int i;

 free_irq(IRQ_GPIO(RDY_GPIO_PIN), par);

 for (i = 0; i < ARRAY_SIZE(gpios); i++)
  gpio_free(gpios[i]);
}
