
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u32 ;
struct net_device {int features; } ;


 int NETIF_F_TSO ;
 int NETIF_F_TSO6 ;

__attribute__((used)) static int s2io_ethtool_op_set_tso(struct net_device *dev, u32 data)
{
 if (data)
  dev->features |= (NETIF_F_TSO | NETIF_F_TSO6);
 else
  dev->features &= ~(NETIF_F_TSO | NETIF_F_TSO6);

 return 0;
}
