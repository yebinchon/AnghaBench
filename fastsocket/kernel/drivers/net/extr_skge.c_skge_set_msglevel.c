
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct skge_port {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct skge_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static void skge_set_msglevel(struct net_device *netdev, u32 value)
{
 struct skge_port *skge = netdev_priv(netdev);
 skge->msg_enable = value;
}
