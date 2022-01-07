
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ixgbe_fcoe {int * ddp_pool; } ;
struct ixgbe_adapter {TYPE_1__* netdev; struct ixgbe_fcoe fcoe; } ;
struct TYPE_2__ {scalar_t__ fcoe_ddp_xid; } ;


 int free_percpu (int *) ;

__attribute__((used)) static void ixgbe_fcoe_ddp_disable(struct ixgbe_adapter *adapter)
{
 struct ixgbe_fcoe *fcoe = &adapter->fcoe;

 adapter->netdev->fcoe_ddp_xid = 0;

 if (!fcoe->ddp_pool)
  return;

 free_percpu(fcoe->ddp_pool);
 fcoe->ddp_pool = ((void*)0);
}
