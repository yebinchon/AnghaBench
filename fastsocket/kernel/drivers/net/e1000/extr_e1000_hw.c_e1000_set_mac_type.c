
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int device_id; int mac_type; int asf_firmware_present; int bad_tx_carr_stats_fd; int has_smbus; int revision_id; } ;
typedef int s32 ;
 int E1000_ERR_MAC_TYPE ;
 int E1000_SUCCESS ;
 int e1000_82540 ;


 int e1000_82542_rev2_0 ;
 int e1000_82542_rev2_1 ;
 int e1000_82543 ;
 int e1000_82544 ;
 int e1000_82545 ;
 int e1000_82545_rev_3 ;
 int e1000_82546 ;
 int e1000_82546_rev_3 ;


 int e1000_ce4100 ;
 int e_dbg (char*) ;

s32 e1000_set_mac_type(struct e1000_hw *hw)
{
 e_dbg("e1000_set_mac_type");

 switch (hw->device_id) {
 case 156:
  switch (hw->revision_id) {
  case 170:
   hw->mac_type = e1000_82542_rev2_0;
   break;
  case 169:
   hw->mac_type = e1000_82542_rev2_1;
   break;
  default:

   return -E1000_ERR_MAC_TYPE;
  }
  break;
 case 154:
 case 155:
  hw->mac_type = e1000_82543;
  break;
 case 153:
 case 152:
 case 151:
 case 150:
  hw->mac_type = e1000_82544;
  break;
 case 168:
 case 167:
 case 166:
 case 165:
 case 164:
  hw->mac_type = e1000_82540;
  break;
 case 149:
 case 148:
  hw->mac_type = e1000_82545;
  break;
 case 147:
 case 146:
 case 145:
  hw->mac_type = e1000_82545_rev_3;
  break;
 case 144:
 case 143:
 case 142:
  hw->mac_type = e1000_82546;
  break;
 case 141:
 case 140:
 case 136:
 case 139:
 case 138:
 case 137:
  hw->mac_type = e1000_82546_rev_3;
  break;
 case 163:
 case 162:
 case 160:
  hw->mac_type = 131;
  break;
 case 161:
 case 159:
 case 158:
 case 157:
  hw->mac_type = 130;
  break;
 case 135:
 case 134:
  hw->mac_type = 129;
  break;
 case 133:
  hw->mac_type = 128;
  break;
 case 132:
  hw->mac_type = e1000_ce4100;
  break;
 default:

  return -E1000_ERR_MAC_TYPE;
 }

 switch (hw->mac_type) {
 case 131:
 case 129:
 case 130:
 case 128:
  hw->asf_firmware_present = 1;
  break;
 default:
  break;
 }




 if (hw->mac_type == e1000_82543)
  hw->bad_tx_carr_stats_fd = 1;

 if (hw->mac_type > e1000_82544)
  hw->has_smbus = 1;

 return E1000_SUCCESS;
}
