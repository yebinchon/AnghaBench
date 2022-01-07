
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int dummy; } ;
struct enic {int msg_enable; } ;


 struct enic* netdev_priv (struct net_device*) ;

__attribute__((used)) static u32 enic_get_msglevel(struct net_device *netdev)
{
 struct enic *enic = netdev_priv(netdev);
 return enic->msg_enable;
}
