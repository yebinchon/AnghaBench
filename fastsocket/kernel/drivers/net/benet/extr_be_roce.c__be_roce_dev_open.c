
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct be_adapter {scalar_t__ ocrdma_dev; } ;
struct TYPE_2__ {int (* state_change_handler ) (scalar_t__,int ) ;} ;


 TYPE_1__* ocrdma_drv ;
 int stub1 (scalar_t__,int ) ;

void _be_roce_dev_open(struct be_adapter *adapter)
{
 if (ocrdma_drv && adapter->ocrdma_dev &&
     ocrdma_drv->state_change_handler)
  ocrdma_drv->state_change_handler(adapter->ocrdma_dev, 0);
}
