
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct qlcnic_adapter {TYPE_1__* recv_ctx; } ;
struct TYPE_2__ {int context_id; } ;


 int qlcnic_pf_set_interface_id_ipaddr (struct qlcnic_adapter*,int*) ;
 scalar_t__ qlcnic_sriov_pf_check (struct qlcnic_adapter*) ;
 int qlcnic_sriov_vf_check (struct qlcnic_adapter*) ;

__attribute__((used)) static void qlcnic_83xx_set_interface_id_ipaddr(struct qlcnic_adapter *adapter,
      u32 *interface_id)
{
 if (qlcnic_sriov_pf_check(adapter)) {
  qlcnic_pf_set_interface_id_ipaddr(adapter, interface_id);
 } else {
  if (!qlcnic_sriov_vf_check(adapter))
   *interface_id = adapter->recv_ctx->context_id << 16;
 }
}
