
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int features; } ;


 int NETIF_F_TSO ;

__attribute__((used)) static u32 s2io_ethtool_op_get_tso(struct net_device *dev)
{
 return (dev->features & NETIF_F_TSO) != 0;
}
