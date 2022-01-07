
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct yenta_socket {int socket; } ;
typedef int irqreturn_t ;


 int CB_CD1EVENT ;
 int CB_CD2EVENT ;
 int CB_SOCKET_EVENT ;
 int I365_CSC ;
 int I365_CSC_BVD1 ;
 int I365_CSC_BVD2 ;
 int I365_CSC_DETECT ;
 int I365_CSC_READY ;
 int I365_CSC_STSCHG ;
 int I365_INTCTL ;
 int I365_PC_IOCARD ;
 int IRQ_HANDLED ;
 int IRQ_NONE ;
 unsigned int SS_BATDEAD ;
 unsigned int SS_BATWARN ;
 unsigned int SS_DETECT ;
 unsigned int SS_READY ;
 unsigned int SS_STSCHG ;
 int cb_readl (struct yenta_socket*,int ) ;
 int cb_writel (struct yenta_socket*,int ,int) ;
 int exca_readb (struct yenta_socket*,int ) ;
 int pcmcia_parse_events (int *,unsigned int) ;

__attribute__((used)) static irqreturn_t yenta_interrupt(int irq, void *dev_id)
{
 unsigned int events;
 struct yenta_socket *socket = (struct yenta_socket *) dev_id;
 u8 csc;
 u32 cb_event;


 cb_event = cb_readl(socket, CB_SOCKET_EVENT);
 cb_writel(socket, CB_SOCKET_EVENT, cb_event);

 csc = exca_readb(socket, I365_CSC);

 if (!(cb_event || csc))
  return IRQ_NONE;

 events = (cb_event & (CB_CD1EVENT | CB_CD2EVENT)) ? SS_DETECT : 0 ;
 events |= (csc & I365_CSC_DETECT) ? SS_DETECT : 0;
 if (exca_readb(socket, I365_INTCTL) & I365_PC_IOCARD) {
  events |= (csc & I365_CSC_STSCHG) ? SS_STSCHG : 0;
 } else {
  events |= (csc & I365_CSC_BVD1) ? SS_BATDEAD : 0;
  events |= (csc & I365_CSC_BVD2) ? SS_BATWARN : 0;
  events |= (csc & I365_CSC_READY) ? SS_READY : 0;
 }

 if (events)
  pcmcia_parse_events(&socket->socket, events);

 return IRQ_HANDLED;
}
