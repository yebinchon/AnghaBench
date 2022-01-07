
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sky2_hw {struct net_device** dev; } ;
struct TYPE_2__ {int rx_bytes; int rx_packets; } ;
struct net_device {int last_rx; TYPE_1__ stats; } ;


 int jiffies ;
 int netdev_priv (struct net_device*) ;
 int * rxqaddr ;
 int sky2_rx_update (int ,int ) ;

__attribute__((used)) static inline void sky2_rx_done(struct sky2_hw *hw, unsigned port,
    unsigned packets, unsigned bytes)
{
 if (packets) {
  struct net_device *dev = hw->dev[port];

  dev->stats.rx_packets += packets;
  dev->stats.rx_bytes += bytes;
  dev->last_rx = jiffies;
  sky2_rx_update(netdev_priv(dev), rxqaddr[port]);
 }
}
