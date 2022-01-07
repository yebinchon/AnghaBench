
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int type; } ;
struct e1000_hw {TYPE_1__ mac; } ;


 int E1000_DTXSWC ;
 int E1000_DTXSWC_MAC_SPOOF_MASK ;
 int E1000_DTXSWC_VLAN_SPOOF_MASK ;
 int E1000_TXSWC ;
 int MAX_NUM_VFS ;



 int rd32 (int) ;
 int wr32 (int,int) ;

void igb_vmdq_set_anti_spoofing_pf(struct e1000_hw *hw, bool enable, int pf)
{
 u32 reg_val, reg_offset;

 switch (hw->mac.type) {
 case 130:
  reg_offset = E1000_DTXSWC;
  break;
 case 129:
 case 128:
  reg_offset = E1000_TXSWC;
  break;
 default:
  return;
 }

 reg_val = rd32(reg_offset);
 if (enable) {
  reg_val |= (E1000_DTXSWC_MAC_SPOOF_MASK |
        E1000_DTXSWC_VLAN_SPOOF_MASK);



  reg_val ^= (1 << pf | 1 << (pf + MAX_NUM_VFS));
 } else {
  reg_val &= ~(E1000_DTXSWC_MAC_SPOOF_MASK |
        E1000_DTXSWC_VLAN_SPOOF_MASK);
 }
 wr32(reg_offset, reg_val);
}
