
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {int* rss_indir_tbl; int vfs_allocated_count; struct e1000_hw hw; } ;


 int E1000_RETA (int ) ;
 int IGB_RETA_SIZE ;


 int wr32 (int,int) ;

void igb_write_rss_indir_tbl(struct igb_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;
 u32 reg = E1000_RETA(0);
 u32 shift = 0;
 int i = 0;

 switch (hw->mac.type) {
 case 129:
  shift = 6;
  break;
 case 128:

  if (adapter->vfs_allocated_count)
   shift = 3;
  break;
 default:
  break;
 }

 while (i < IGB_RETA_SIZE) {
  u32 val = 0;
  int j;

  for (j = 3; j >= 0; j--) {
   val <<= 8;
   val |= adapter->rss_indir_tbl[i + j];
  }

  wr32(reg, val << shift);
  reg += 4;
  i += 4;
 }
}
