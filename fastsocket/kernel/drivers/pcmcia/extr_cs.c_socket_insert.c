
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcmcia_socket {int state; int sock; int dev; } ;


 int CS_EVENT_CARD_INSERTION ;
 int CS_EVENT_PRI_LOW ;
 int ENODEV ;
 int KERN_NOTICE ;
 int SOCKET_CARDBUS ;
 int SOCKET_CARDBUS_CONFIG ;
 int SOCKET_PRESENT ;
 int cb_alloc (struct pcmcia_socket*) ;
 int cs_dbg (struct pcmcia_socket*,int,char*) ;
 int cs_socket_get (struct pcmcia_socket*) ;
 int dev_printk (int ,int *,char*,char*,int ) ;
 int send_event (struct pcmcia_socket*,int ,int ) ;
 int setup_delay ;
 int socket_setup (struct pcmcia_socket*,int ) ;
 int socket_shutdown (struct pcmcia_socket*) ;

__attribute__((used)) static int socket_insert(struct pcmcia_socket *skt)
{
 int ret;

 cs_dbg(skt, 4, "insert\n");

 if (!cs_socket_get(skt))
  return -ENODEV;

 ret = socket_setup(skt, setup_delay);
 if (ret == 0) {
  skt->state |= SOCKET_PRESENT;

  dev_printk(KERN_NOTICE, &skt->dev,
      "pccard: %s card inserted into slot %d\n",
      (skt->state & SOCKET_CARDBUS) ? "CardBus" : "PCMCIA",
      skt->sock);







  cs_dbg(skt, 4, "insert done\n");

  send_event(skt, CS_EVENT_CARD_INSERTION, CS_EVENT_PRI_LOW);
 } else {
  socket_shutdown(skt);
 }

 return ret;
}
