
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u8 ;
typedef int u32 ;
struct ixgb_hw {int dummy; } ;


 int DEBUGFUNC (char*) ;
 int IXGB_RAH_AV ;
 int IXGB_WRITE_REG_ARRAY (struct ixgb_hw*,int ,int,int) ;
 int RA ;

void
ixgb_rar_set(struct ixgb_hw *hw,
    u8 *addr,
    u32 index)
{
 u32 rar_low, rar_high;

 DEBUGFUNC("ixgb_rar_set");




 rar_low = ((u32) addr[0] |
     ((u32)addr[1] << 8) |
     ((u32)addr[2] << 16) |
     ((u32)addr[3] << 24));

 rar_high = ((u32) addr[4] |
   ((u32)addr[5] << 8) |
   IXGB_RAH_AV);

 IXGB_WRITE_REG_ARRAY(hw, RA, (index << 1), rar_low);
 IXGB_WRITE_REG_ARRAY(hw, RA, ((index << 1) + 1), rar_high);
 return;
}
