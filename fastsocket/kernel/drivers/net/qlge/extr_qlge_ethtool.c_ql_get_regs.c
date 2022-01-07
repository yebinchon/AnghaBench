
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ql_reg_dump {int dummy; } ;
struct ql_mpi_coredump {int dummy; } ;
struct ql_adapter {int flags; scalar_t__ core_is_dumped; } ;
struct net_device {int dummy; } ;
struct ethtool_regs {int len; } ;


 int QL_FRC_COREDUMP ;
 struct ql_adapter* netdev_priv (struct net_device*) ;
 int ql_get_dump (struct ql_adapter*,void*) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static void ql_get_regs(struct net_device *ndev,
   struct ethtool_regs *regs, void *p)
{
 struct ql_adapter *qdev = netdev_priv(ndev);

 ql_get_dump(qdev, p);
 qdev->core_is_dumped = 0;
 if (!test_bit(QL_FRC_COREDUMP, &qdev->flags))
  regs->len = sizeof(struct ql_mpi_coredump);
 else
  regs->len = sizeof(struct ql_reg_dump);
}
