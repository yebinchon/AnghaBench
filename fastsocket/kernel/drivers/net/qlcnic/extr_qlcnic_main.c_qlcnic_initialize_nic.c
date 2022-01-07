
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u8 ;
typedef int u32 ;
struct qlcnic_info {int capabilities; int max_mtu; int max_mac_filters; int max_rx_ques; int max_tx_ques; int switch_mode; scalar_t__ phys_port; } ;
struct qlcnic_adapter {int flags; TYPE_1__* ahw; } ;
struct TYPE_2__ {int capabilities; int max_mtu; int max_mac_filters; int capabilities2; int max_rx_ques; int max_tx_ques; int switch_mode; scalar_t__ physical_port; int pci_func; } ;


 int BIT_6 ;
 int CRB_FW_CAPABILITIES_2 ;
 int QLCNIC_ESWITCH_ENABLED ;
 int QLCNIC_FW_CAPABILITY_MORE_CAPS ;
 int QLCRD32 (struct qlcnic_adapter*,int ) ;
 int memset (struct qlcnic_info*,int ,int) ;
 scalar_t__ qlcnic_83xx_check (struct qlcnic_adapter*) ;
 int qlcnic_get_nic_info (struct qlcnic_adapter*,struct qlcnic_info*,int ) ;

__attribute__((used)) static int
qlcnic_initialize_nic(struct qlcnic_adapter *adapter)
{
 int err;
 struct qlcnic_info nic_info;

 memset(&nic_info, 0, sizeof(struct qlcnic_info));
 err = qlcnic_get_nic_info(adapter, &nic_info, adapter->ahw->pci_func);
 if (err)
  return err;

 adapter->ahw->physical_port = (u8)nic_info.phys_port;
 adapter->ahw->switch_mode = nic_info.switch_mode;
 adapter->ahw->max_tx_ques = nic_info.max_tx_ques;
 adapter->ahw->max_rx_ques = nic_info.max_rx_ques;
 adapter->ahw->capabilities = nic_info.capabilities;

 if (adapter->ahw->capabilities & QLCNIC_FW_CAPABILITY_MORE_CAPS) {
  u32 temp;
  temp = QLCRD32(adapter, CRB_FW_CAPABILITIES_2);
  adapter->ahw->capabilities2 = temp;
 }
 adapter->ahw->max_mac_filters = nic_info.max_mac_filters;
 adapter->ahw->max_mtu = nic_info.max_mtu;


 if (qlcnic_83xx_check(adapter))
  return err;

 if (adapter->ahw->capabilities & BIT_6)
  adapter->flags |= QLCNIC_ESWITCH_ENABLED;
 else
  adapter->flags &= ~QLCNIC_ESWITCH_ENABLED;

 return err;
}
