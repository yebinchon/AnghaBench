
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {int dummy; } ;


 unsigned int get_memclk_frequency_10khz () ;
 int pxa2xx_pcmcia_set_mcxx (struct soc_pcmcia_socket*,unsigned int) ;

__attribute__((used)) static int pxa2xx_pcmcia_set_timing(struct soc_pcmcia_socket *skt)
{
 unsigned int clk = get_memclk_frequency_10khz();
 return pxa2xx_pcmcia_set_mcxx(skt, clk);
}
