
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
struct qlcnic_info {int capabilities; int max_mtu; int max_mac_filters; int max_rx_ques; int max_tx_ques; int switch_mode; scalar_t__ phys_port; } ;
struct qlcnic_hardware_context {int capabilities; int nic_mode; int max_mtu; int max_mac_filters; int max_rx_ques; int max_tx_ques; int switch_mode; scalar_t__ physical_port; int pci_func; } ;
struct qlcnic_adapter {int state; struct qlcnic_hardware_context* ahw; } ;


 int BIT_23 ;
 int EIO ;
 void* QLC_83XX_DEFAULT_MODE ;
 int QLC_83XX_VIRTUAL_NIC_MODE ;
 int __QLCNIC_SRIOV_CAPABLE ;
 int memset (struct qlcnic_info*,int ,int) ;
 int qlcnic_get_nic_info (struct qlcnic_adapter*,struct qlcnic_info*,int ) ;
 scalar_t__ test_bit (int ,int *) ;

int qlcnic_83xx_get_nic_configuration(struct qlcnic_adapter *adapter)
{
 int err;
 struct qlcnic_info nic_info;
 struct qlcnic_hardware_context *ahw = adapter->ahw;

 memset(&nic_info, 0, sizeof(struct qlcnic_info));
 err = qlcnic_get_nic_info(adapter, &nic_info, ahw->pci_func);
 if (err)
  return -EIO;

 ahw->physical_port = (u8) nic_info.phys_port;
 ahw->switch_mode = nic_info.switch_mode;
 ahw->max_tx_ques = nic_info.max_tx_ques;
 ahw->max_rx_ques = nic_info.max_rx_ques;
 ahw->capabilities = nic_info.capabilities;
 ahw->max_mac_filters = nic_info.max_mac_filters;
 ahw->max_mtu = nic_info.max_mtu;






 if (test_bit(__QLCNIC_SRIOV_CAPABLE, &adapter->state)) {
  ahw->nic_mode = QLC_83XX_DEFAULT_MODE;
  return ahw->nic_mode;
 }

 if (ahw->capabilities & BIT_23)
  ahw->nic_mode = QLC_83XX_VIRTUAL_NIC_MODE;
 else
  ahw->nic_mode = QLC_83XX_DEFAULT_MODE;

 return ahw->nic_mode;
}
