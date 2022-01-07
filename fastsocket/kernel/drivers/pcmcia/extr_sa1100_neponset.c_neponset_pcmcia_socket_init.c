
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {scalar_t__ nr; } ;


 int NCR_0 ;
 int NCR_A0VPP ;
 int NCR_A1VPP ;
 int sa1111_pcmcia_socket_init (struct soc_pcmcia_socket*) ;

__attribute__((used)) static void neponset_pcmcia_socket_init(struct soc_pcmcia_socket *skt)
{
 if (skt->nr == 0)
  NCR_0 &= ~(NCR_A0VPP | NCR_A1VPP);

 sa1111_pcmcia_socket_init(skt);
}
