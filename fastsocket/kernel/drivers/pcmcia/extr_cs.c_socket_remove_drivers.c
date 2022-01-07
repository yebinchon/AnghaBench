
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {int dummy; } ;


 int CS_EVENT_CARD_REMOVAL ;
 int CS_EVENT_PRI_HIGH ;
 int cs_dbg (struct pcmcia_socket*,int,char*) ;
 int send_event (struct pcmcia_socket*,int ,int ) ;

__attribute__((used)) static void socket_remove_drivers(struct pcmcia_socket *skt)
{
 cs_dbg(skt, 4, "remove_drivers\n");

 send_event(skt, CS_EVENT_CARD_REMOVAL, CS_EVENT_PRI_HIGH);
}
