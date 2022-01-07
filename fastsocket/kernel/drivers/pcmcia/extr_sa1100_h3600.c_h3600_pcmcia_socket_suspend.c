
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {int nr; } ;


 int ARRAY_SIZE (int ) ;
 int IPAQ_EGPIO_OPT_NVRAM_ON ;
 int IPAQ_EGPIO_OPT_ON ;
 int IPAQ_EGPIO_OPT_RESET ;
 int assign_h3600_egpio (int ,int) ;
 int irqs ;
 int soc_pcmcia_disable_irqs (struct soc_pcmcia_socket*,int ,int ) ;

__attribute__((used)) static void h3600_pcmcia_socket_suspend(struct soc_pcmcia_socket *skt)
{
 soc_pcmcia_disable_irqs(skt, irqs, ARRAY_SIZE(irqs));







 if (skt->nr == 1) {
  assign_h3600_egpio(IPAQ_EGPIO_OPT_ON, 0);
  assign_h3600_egpio(IPAQ_EGPIO_OPT_NVRAM_ON, 0);

  assign_h3600_egpio(IPAQ_EGPIO_OPT_RESET, 1);
 }
}
