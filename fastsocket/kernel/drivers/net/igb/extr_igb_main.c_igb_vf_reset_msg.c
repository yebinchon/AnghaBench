
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef size_t u32 ;
struct TYPE_3__ {size_t rar_entry_count; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {TYPE_2__* vf_data; struct e1000_hw hw; } ;
struct TYPE_4__ {unsigned char* vf_mac_addresses; int flags; } ;


 int E1000_VFRE ;
 int E1000_VFTE ;
 size_t E1000_VF_RESET ;
 size_t E1000_VT_MSGTYPE_ACK ;
 int IGB_VF_FLAG_CTS ;
 int igb_rar_set_qsel (struct igb_adapter*,unsigned char*,int,size_t) ;
 int igb_vf_reset (struct igb_adapter*,size_t) ;
 int igb_write_mbx (struct e1000_hw*,size_t*,int,size_t) ;
 int memcpy (int *,unsigned char*,int) ;
 size_t rd32 (int ) ;
 int wr32 (int ,size_t) ;

__attribute__((used)) static void igb_vf_reset_msg(struct igb_adapter *adapter, u32 vf)
{
 struct e1000_hw *hw = &adapter->hw;
 unsigned char *vf_mac = adapter->vf_data[vf].vf_mac_addresses;
 int rar_entry = hw->mac.rar_entry_count - (vf + 1);
 u32 reg, msgbuf[3];
 u8 *addr = (u8 *)(&msgbuf[1]);


 igb_vf_reset(adapter, vf);


 igb_rar_set_qsel(adapter, vf_mac, rar_entry, vf);


 reg = rd32(E1000_VFTE);
 wr32(E1000_VFTE, reg | (1 << vf));
 reg = rd32(E1000_VFRE);
 wr32(E1000_VFRE, reg | (1 << vf));

 adapter->vf_data[vf].flags |= IGB_VF_FLAG_CTS;


 msgbuf[0] = E1000_VF_RESET | E1000_VT_MSGTYPE_ACK;
 memcpy(addr, vf_mac, 6);
 igb_write_mbx(hw, msgbuf, 3, vf);
}
