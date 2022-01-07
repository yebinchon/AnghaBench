
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sky2_port {int flags; } ;
struct net_device {int dummy; } ;


 int SKY2_FLAG_RX_CHECKSUM ;
 struct sky2_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 sky2_get_rx_csum(struct net_device *dev)
{
 struct sky2_port *sky2 = netdev_priv(dev);

 return !!(sky2->flags & SKY2_FLAG_RX_CHECKSUM);
}
