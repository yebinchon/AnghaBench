
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e1000_mac_info {int in_ifs_mode; int ifs_ratio; int ifs_step_size; int ifs_max_val; int ifs_min_val; scalar_t__ current_ifs_val; int adaptive_ifs; } ;
struct e1000_hw {struct e1000_mac_info mac; } ;


 int AIT ;
 int IFS_MAX ;
 int IFS_MIN ;
 int IFS_RATIO ;
 int IFS_STEP ;
 int e_dbg (char*) ;
 int ew32 (int ,int ) ;

void e1000e_reset_adaptive(struct e1000_hw *hw)
{
 struct e1000_mac_info *mac = &hw->mac;

 if (!mac->adaptive_ifs) {
  e_dbg("Not in Adaptive IFS mode!\n");
  return;
 }

 mac->current_ifs_val = 0;
 mac->ifs_min_val = IFS_MIN;
 mac->ifs_max_val = IFS_MAX;
 mac->ifs_step_size = IFS_STEP;
 mac->ifs_ratio = IFS_RATIO;

 mac->in_ifs_mode = 0;
 ew32(AIT, 0);
}
