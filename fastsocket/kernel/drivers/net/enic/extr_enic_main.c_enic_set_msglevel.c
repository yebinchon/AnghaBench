
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct enic {int msg_enable; } ;


 struct enic* netdev_priv (struct net_device*) ;

__attribute__((used)) static void enic_set_msglevel(struct net_device *netdev, u32 value)
{
 struct enic *enic = netdev_priv(netdev);
 enic->msg_enable = value;
}
