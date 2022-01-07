
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_mac_info {int collision_delta; int ifs_ratio; int tx_packet_delta; int in_ifs_mode; scalar_t__ current_ifs_val; scalar_t__ ifs_max_val; scalar_t__ ifs_min_val; scalar_t__ ifs_step_size; int adaptive_ifs; } ;
struct e1000_hw {struct e1000_mac_info mac; } ;


 int AIT ;
 int MIN_NUM_XMITS ;
 int e_dbg (char*) ;
 int ew32 (int ,scalar_t__) ;

void e1000e_update_adaptive(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;

 if (!mac->adaptive_ifs) {
  e_dbg("Not in Adaptive IFS mode!\n");
  return;
 }

 if ((mac->collision_delta * mac->ifs_ratio) > mac->tx_packet_delta) {
  if (mac->tx_packet_delta > MIN_NUM_XMITS) {
   mac->in_ifs_mode = 1;
   if (mac->current_ifs_val < mac->ifs_max_val) {
    if (!mac->current_ifs_val)
     mac->current_ifs_val = mac->ifs_min_val;
    else
     mac->current_ifs_val +=
         mac->ifs_step_size;
    ew32(AIT, mac->current_ifs_val);
   }
  }
 } else {
  if (mac->in_ifs_mode &&
      (mac->tx_packet_delta <= MIN_NUM_XMITS)) {
   mac->current_ifs_val = 0;
   mac->in_ifs_mode = 0;
   ew32(AIT, 0);
  }
 }
}
