
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_adapter {TYPE_1__* nic_ops; } ;
struct TYPE_2__ {int (* request_reset ) (struct qlcnic_adapter*,int ) ;} ;


 int stub1 (struct qlcnic_adapter*,int ) ;

__attribute__((used)) static inline void qlcnic_dev_request_reset(struct qlcnic_adapter *adapter,
         u32 key)
{
 if (adapter->nic_ops->request_reset)
  adapter->nic_ops->request_reset(adapter, key);
}
