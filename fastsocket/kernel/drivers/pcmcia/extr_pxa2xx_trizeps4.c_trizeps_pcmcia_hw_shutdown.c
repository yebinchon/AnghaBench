
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct soc_pcmcia_socket {int dummy; } ;
struct TYPE_3__ {int irq; } ;


 int ARRAY_SIZE (TYPE_1__*) ;
 int GPIO_PRDY ;
 int IRQ_TO_GPIO (int ) ;
 int gpio_free (int ) ;
 TYPE_1__* irqs ;

__attribute__((used)) static void trizeps_pcmcia_hw_shutdown(struct soc_pcmcia_socket *skt)
{
 int i;

 gpio_free(GPIO_PRDY);
 for (i = 0; i < ARRAY_SIZE(irqs); i++)
  gpio_free(IRQ_TO_GPIO(irqs[i].irq));
}
