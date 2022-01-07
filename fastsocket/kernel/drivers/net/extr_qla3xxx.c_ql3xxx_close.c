
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql3_adapter {int flags; } ;
struct net_device {int dummy; } ;


 int QL_ADAPTER_UP ;
 int QL_DO_RESET ;
 int msleep (int) ;
 struct ql3_adapter* netdev_priv (struct net_device*) ;
 int ql_adapter_down (struct ql3_adapter*,int ) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int ql3xxx_close(struct net_device *ndev)
{
 struct ql3_adapter *qdev = netdev_priv(ndev);





 while (!test_bit(QL_ADAPTER_UP,&qdev->flags))
  msleep(50);

 ql_adapter_down(qdev,QL_DO_RESET);
 return 0;
}
