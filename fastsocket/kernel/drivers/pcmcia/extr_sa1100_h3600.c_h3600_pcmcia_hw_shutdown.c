
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {int dummy; } ;


 int ARRAY_SIZE (int ) ;
 int IPAQ_EGPIO_OPT_NVRAM_ON ;
 int IPAQ_EGPIO_OPT_ON ;
 int IPAQ_EGPIO_OPT_RESET ;
 int assign_h3600_egpio (int ,int) ;
 int irqs ;
 int soc_pcmcia_free_irqs (struct soc_pcmcia_socket*,int ,int ) ;

__attribute__((used)) static void h3600_pcmcia_hw_shutdown(struct soc_pcmcia_socket *skt)
{
 soc_pcmcia_free_irqs(skt, irqs, ARRAY_SIZE(irqs));


 assign_h3600_egpio(IPAQ_EGPIO_OPT_NVRAM_ON, 0);
 assign_h3600_egpio(IPAQ_EGPIO_OPT_ON, 0);
 assign_h3600_egpio(IPAQ_EGPIO_OPT_RESET, 1);
}
