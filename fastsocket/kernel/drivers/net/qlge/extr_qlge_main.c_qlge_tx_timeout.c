
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_adapter {int dummy; } ;
struct net_device {int dummy; } ;


 struct ql_adapter* netdev_priv (struct net_device*) ;
 int ql_queue_asic_error (struct ql_adapter*) ;

__attribute__((used)) static void qlge_tx_timeout(struct net_device *ndev)
{
 struct ql_adapter *qdev = netdev_priv(ndev);
 ql_queue_asic_error(qdev);
}
