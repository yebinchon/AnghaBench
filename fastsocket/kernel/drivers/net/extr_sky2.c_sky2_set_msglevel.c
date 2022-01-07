
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sky2_port {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct sky2_port* netdev_priv (struct net_device*) ;

__attribute__((used)) static void sky2_set_msglevel(struct net_device *netdev, u32 value)
{
 struct sky2_port *sky2 = netdev_priv(netdev);
 sky2->msg_enable = value;
}
