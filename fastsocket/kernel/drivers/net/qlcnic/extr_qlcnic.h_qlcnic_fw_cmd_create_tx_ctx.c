
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct qlcnic_host_tx_ring {int dummy; } ;
struct qlcnic_adapter {TYPE_2__* ahw; } ;
struct TYPE_4__ {TYPE_1__* hw_ops; } ;
struct TYPE_3__ {int (* create_tx_ctx ) (struct qlcnic_adapter*,struct qlcnic_host_tx_ring*,int) ;} ;


 int stub1 (struct qlcnic_adapter*,struct qlcnic_host_tx_ring*,int) ;

__attribute__((used)) static inline int qlcnic_fw_cmd_create_tx_ctx(struct qlcnic_adapter *adapter,
           struct qlcnic_host_tx_ring *ptr,
           int ring)
{
 return adapter->ahw->hw_ops->create_tx_ctx(adapter, ptr, ring);
}
