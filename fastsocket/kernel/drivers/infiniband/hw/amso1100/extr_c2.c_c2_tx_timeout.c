
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int name; } ;
struct c2_port {int dummy; } ;


 int c2_tx_clean (struct c2_port*) ;
 struct c2_port* netdev_priv (struct net_device*) ;
 scalar_t__ netif_msg_timer (struct c2_port*) ;
 int pr_debug (char*,int ) ;

__attribute__((used)) static void c2_tx_timeout(struct net_device *netdev)
{
 struct c2_port *c2_port = netdev_priv(netdev);

 if (netif_msg_timer(c2_port))
  pr_debug("%s: tx timeout\n", netdev->name);

 c2_tx_clean(c2_port);
}
