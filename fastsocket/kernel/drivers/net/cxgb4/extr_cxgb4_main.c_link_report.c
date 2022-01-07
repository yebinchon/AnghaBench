
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int speed; size_t fc; } ;
struct port_info {TYPE_1__ link_cfg; } ;
struct net_device {int dummy; } ;





 int netdev_info (struct net_device*,char*,...) ;
 struct port_info* netdev_priv (struct net_device*) ;
 int netif_carrier_ok (struct net_device*) ;

__attribute__((used)) static void link_report(struct net_device *dev)
{
 if (!netif_carrier_ok(dev))
  netdev_info(dev, "link down\n");
 else {
  static const char *fc[] = { "no", "Rx", "Tx", "Tx/Rx" };

  const char *s = "10Mbps";
  const struct port_info *p = netdev_priv(dev);

  switch (p->link_cfg.speed) {
  case 128:
   s = "10Gbps";
   break;
  case 129:
   s = "1000Mbps";
   break;
  case 130:
   s = "100Mbps";
   break;
  }

  netdev_info(dev, "link up, %s, full-duplex, %s PAUSE\n", s,
       fc[p->link_cfg.fc]);
 }
}
