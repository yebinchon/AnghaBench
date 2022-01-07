
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_hw {int collision_delta; int ifs_ratio; int tx_packet_delta; int in_ifs_mode; scalar_t__ current_ifs_val; scalar_t__ ifs_max_val; scalar_t__ ifs_min_val; scalar_t__ ifs_step_size; scalar_t__ adaptive_ifs; } ;


 int AIT ;
 int MIN_NUM_XMITS ;
 int e_dbg (char*) ;
 int ew32 (int ,scalar_t__) ;

void e1000_update_adaptive(struct e1000_hw *hw)
{
 e_dbg("e1000_update_adaptive");

 if (hw->adaptive_ifs) {
  if ((hw->collision_delta *hw->ifs_ratio) > hw->tx_packet_delta) {
   if (hw->tx_packet_delta > MIN_NUM_XMITS) {
    hw->in_ifs_mode = 1;
    if (hw->current_ifs_val < hw->ifs_max_val) {
     if (hw->current_ifs_val == 0)
      hw->current_ifs_val =
          hw->ifs_min_val;
     else
      hw->current_ifs_val +=
          hw->ifs_step_size;
     ew32(AIT, hw->current_ifs_val);
    }
   }
  } else {
   if (hw->in_ifs_mode
       && (hw->tx_packet_delta <= MIN_NUM_XMITS)) {
    hw->current_ifs_val = 0;
    hw->in_ifs_mode = 0;
    ew32(AIT, 0);
   }
  }
 } else {
  e_dbg("Not in Adaptive IFS mode!\n");
 }
}
