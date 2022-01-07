
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nic {int tx_timeout_task; } ;
struct net_device {int dummy; } ;


 struct nic* netdev_priv (struct net_device*) ;
 int schedule_work (int *) ;

__attribute__((used)) static void e100_tx_timeout(struct net_device *netdev)
{
 struct nic *nic = netdev_priv(netdev);



 schedule_work(&nic->tx_timeout_task);
}
