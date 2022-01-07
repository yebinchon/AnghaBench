
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ql3_adapter {int msg_enable; } ;
struct net_device {int dummy; } ;


 struct ql3_adapter* netdev_priv (struct net_device*) ;

__attribute__((used)) static void ql_set_msglevel(struct net_device *ndev, u32 value)
{
 struct ql3_adapter *qdev = netdev_priv(ndev);
 qdev->msg_enable = value;
}
