
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_adapter {TYPE_2__* ahw; } ;
struct TYPE_4__ {TYPE_1__* hw_ops; } ;
struct TYPE_3__ {void (* del_rx_ctx ) (struct qlcnic_adapter*) ;} ;


 void stub1 (struct qlcnic_adapter*) ;

__attribute__((used)) static inline void qlcnic_fw_cmd_del_rx_ctx(struct qlcnic_adapter *adapter)
{
 return adapter->ahw->hw_ops->del_rx_ctx(adapter);
}
