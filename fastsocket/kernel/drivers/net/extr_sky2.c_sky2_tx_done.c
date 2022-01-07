
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct sky2_port {int dummy; } ;
struct net_device {int dummy; } ;


 struct sky2_port* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;
 int sky2_tx_complete (struct sky2_port*,int ) ;

__attribute__((used)) static inline void sky2_tx_done(struct net_device *dev, u16 last)
{
 struct sky2_port *sky2 = netdev_priv(dev);

 if (netif_running(dev))
  sky2_tx_complete(sky2, last);
}
