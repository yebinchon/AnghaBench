
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {int dummy; } ;


 int GPIO_NR_PALMLD_PCMCIA_POWER ;
 int GPIO_NR_PALMLD_PCMCIA_READY ;
 int GPIO_NR_PALMLD_PCMCIA_RESET ;
 int gpio_free (int ) ;

__attribute__((used)) static void palmld_pcmcia_hw_shutdown(struct soc_pcmcia_socket *skt)
{
 gpio_free(GPIO_NR_PALMLD_PCMCIA_READY);
 gpio_free(GPIO_NR_PALMLD_PCMCIA_RESET);
 gpio_free(GPIO_NR_PALMLD_PCMCIA_POWER);
}
