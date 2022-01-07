
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct qlcnic_adapter {int ahw; } ;


 int QLCNIC_MBX_FW (int ,int) ;
 int QLCNIC_RCODE_SUCCESS ;
 scalar_t__ QLC_83XX_MAC_ABSENT ;
 scalar_t__ QLC_83XX_MAC_PRESENT ;
 scalar_t__ QLC_83XX_NO_NIC_RESOURCE ;
 int readl (int ) ;

u32 qlcnic_83xx_mac_rcode(struct qlcnic_adapter *adapter)
{
 u32 fw_data;
 u8 mac_cmd_rcode;

 fw_data = readl(QLCNIC_MBX_FW(adapter->ahw, 2));
 mac_cmd_rcode = (u8)fw_data;
 if (mac_cmd_rcode == QLC_83XX_NO_NIC_RESOURCE ||
     mac_cmd_rcode == QLC_83XX_MAC_PRESENT ||
     mac_cmd_rcode == QLC_83XX_MAC_ABSENT)
  return QLCNIC_RCODE_SUCCESS;
 return 1;
}
