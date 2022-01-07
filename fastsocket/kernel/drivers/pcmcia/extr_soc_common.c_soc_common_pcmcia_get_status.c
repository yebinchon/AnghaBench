
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct soc_pcmcia_socket {unsigned int status; } ;
struct pcmcia_socket {int dummy; } ;


 unsigned int soc_common_pcmcia_skt_state (struct soc_pcmcia_socket*) ;
 struct soc_pcmcia_socket* to_soc_pcmcia_socket (struct pcmcia_socket*) ;

__attribute__((used)) static int
soc_common_pcmcia_get_status(struct pcmcia_socket *sock, unsigned int *status)
{
 struct soc_pcmcia_socket *skt = to_soc_pcmcia_socket(sock);

 skt->status = soc_common_pcmcia_skt_state(skt);
 *status = skt->status;

 return 0;
}
