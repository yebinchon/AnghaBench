
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql3_adapter {int dummy; } ;
struct net_device {int dummy; } ;


 struct ql3_adapter* netdev_priv (struct net_device*) ;
 int ql_adapter_up (struct ql3_adapter*) ;

__attribute__((used)) static int ql3xxx_open(struct net_device *ndev)
{
 struct ql3_adapter *qdev = netdev_priv(ndev);
 return (ql_adapter_up(qdev));
}
