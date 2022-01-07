
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {int irq; } ;


 int ARRAY_SIZE (int ) ;
 int GPIO_PCMCIA_RESET ;
 int PCMCIA_S0_RDYINT ;
 int gpio_direction_output (int ,int ) ;
 int gpio_free (int ) ;
 int gpio_request (int ,char*) ;
 int irqs ;
 int soc_pcmcia_request_irqs (struct soc_pcmcia_socket*,int ,int ) ;

__attribute__((used)) static int cmx270_pcmcia_hw_init(struct soc_pcmcia_socket *skt)
{
 int ret = gpio_request(GPIO_PCMCIA_RESET, "PCCard reset");
 if (ret)
  return ret;
 gpio_direction_output(GPIO_PCMCIA_RESET, 0);

 skt->irq = PCMCIA_S0_RDYINT;
 ret = soc_pcmcia_request_irqs(skt, irqs, ARRAY_SIZE(irqs));
 if (!ret)
  gpio_free(GPIO_PCMCIA_RESET);

 return ret;
}
