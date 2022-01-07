
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int current_mode; int high_water; scalar_t__ send_xon; int low_water; } ;
struct e1000_hw {TYPE_1__ fc; } ;
typedef int s32 ;


 int E1000_FCRTH ;
 int E1000_FCRTL ;
 int E1000_FCRTL_XONE ;
 int e1000_fc_tx_pause ;
 int wr32 (int ,int ) ;

__attribute__((used)) static s32 igb_set_fc_watermarks(struct e1000_hw *hw)
{
 s32 ret_val = 0;
 u32 fcrtl = 0, fcrth = 0;







 if (hw->fc.current_mode & e1000_fc_tx_pause) {




  fcrtl = hw->fc.low_water;
  if (hw->fc.send_xon)
   fcrtl |= E1000_FCRTL_XONE;

  fcrth = hw->fc.high_water;
 }
 wr32(E1000_FCRTL, fcrtl);
 wr32(E1000_FCRTH, fcrth);

 return ret_val;
}
