
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_2__* ahw; } ;
struct TYPE_4__ {TYPE_1__* hw_ops; } ;
struct TYPE_3__ {int (* config_hw_lro ) (struct qlcnic_adapter*,int) ;} ;


 int stub1 (struct qlcnic_adapter*,int) ;

__attribute__((used)) static inline int qlcnic_config_hw_lro(struct qlcnic_adapter *adapter,
           int enable)
{
 return adapter->ahw->hw_ops->config_hw_lro(adapter, enable);
}
