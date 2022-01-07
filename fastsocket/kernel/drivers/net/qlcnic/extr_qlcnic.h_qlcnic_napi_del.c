
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_1__* nic_ops; } ;
struct TYPE_2__ {int (* napi_del ) (struct qlcnic_adapter*) ;} ;


 int stub1 (struct qlcnic_adapter*) ;

__attribute__((used)) static inline void qlcnic_napi_del(struct qlcnic_adapter *adapter)
{
 adapter->nic_ops->napi_del(adapter);
}
