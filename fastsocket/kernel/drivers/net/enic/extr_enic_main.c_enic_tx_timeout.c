
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
struct enic {int reset; } ;


 struct enic* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void enic_tx_timeout(struct net_device *netdev)
{
 struct enic *enic = netdev_priv(netdev);
 schedule_work(&enic->reset);
}
