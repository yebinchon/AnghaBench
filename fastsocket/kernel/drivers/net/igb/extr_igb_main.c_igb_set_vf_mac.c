
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rar_entry_count; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {TYPE_2__* vf_data; struct e1000_hw hw; } ;
struct TYPE_4__ {int vf_mac_addresses; } ;


 int ETH_ALEN ;
 int igb_rar_set_qsel (struct igb_adapter*,unsigned char*,int,int) ;
 int memcpy (int ,unsigned char*,int ) ;

__attribute__((used)) static int igb_set_vf_mac(struct igb_adapter *adapter,
     int vf, unsigned char *mac_addr)
{
 struct e1000_hw *hw = &adapter->hw;



 int rar_entry = hw->mac.rar_entry_count - (vf + 1);

 memcpy(adapter->vf_data[vf].vf_mac_addresses, mac_addr, ETH_ALEN);

 igb_rar_set_qsel(adapter, mac_addr, rar_entry, vf);

 return 0;
}
