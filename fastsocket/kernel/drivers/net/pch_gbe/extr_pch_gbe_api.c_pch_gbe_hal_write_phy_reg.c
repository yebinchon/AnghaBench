
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct pch_gbe_hw {TYPE_1__* func; } ;
typedef int s32 ;
struct TYPE_2__ {int (* write_phy_reg ) (struct pch_gbe_hw*,int ,int ) ;} ;


 int stub1 (struct pch_gbe_hw*,int ,int ) ;

inline s32 pch_gbe_hal_write_phy_reg(struct pch_gbe_hw *hw, u32 offset,
     u16 data)
{
 if (!hw->func->write_phy_reg)
  return 0;
 return hw->func->write_phy_reg(hw, offset, data);
}
