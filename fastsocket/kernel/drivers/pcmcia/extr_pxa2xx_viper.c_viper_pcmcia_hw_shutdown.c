
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int VIPER_CF_CD_GPIO ;
 int VIPER_CF_POWER_GPIO ;
 int VIPER_CF_RDY_GPIO ;
 int gpio_free (int ) ;
 int irqs ;
 int soc_pcmcia_free_irqs (struct soc_pcmcia_socket*,int ,int ) ;

__attribute__((used)) static void viper_pcmcia_hw_shutdown(struct soc_pcmcia_socket *skt)
{
 soc_pcmcia_free_irqs(skt, irqs, ARRAY_SIZE(irqs));
 gpio_free(VIPER_CF_POWER_GPIO);
 gpio_free(VIPER_CF_RDY_GPIO);
 gpio_free(VIPER_CF_CD_GPIO);
}
