
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct port {int carrier; int loopback; } ;
struct net_device {int dummy; } ;


 struct port* dev_to_port (struct net_device*) ;
 int netif_carrier_off (struct net_device*) ;
 int netif_carrier_on (struct net_device*) ;
 int npe_lock ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void hss_hdlc_set_carrier(void *pdev, int carrier)
{
 struct net_device *netdev = pdev;
 struct port *port = dev_to_port(netdev);
 unsigned long flags;

 spin_lock_irqsave(&npe_lock, flags);
 port->carrier = carrier;
 if (!port->loopback) {
  if (carrier)
   netif_carrier_on(netdev);
  else
   netif_carrier_off(netdev);
 }
 spin_unlock_irqrestore(&npe_lock, flags);
}
