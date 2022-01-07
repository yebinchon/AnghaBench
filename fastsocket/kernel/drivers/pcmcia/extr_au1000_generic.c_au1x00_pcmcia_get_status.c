
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {int dummy; } ;
struct au1000_pcmcia_socket {unsigned int status; } ;


 unsigned int au1x00_pcmcia_skt_state (struct au1000_pcmcia_socket*) ;
 struct au1000_pcmcia_socket* to_au1000_socket (struct pcmcia_socket*) ;

__attribute__((used)) static int
au1x00_pcmcia_get_status(struct pcmcia_socket *sock, unsigned int *status)
{
 struct au1000_pcmcia_socket *skt = to_au1000_socket(sock);

 skt->status = au1x00_pcmcia_skt_state(skt);
 *status = skt->status;

 return 0;
}
