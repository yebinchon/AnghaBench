
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pch_gbe_hw {TYPE_1__* func; } ;
typedef int s32 ;
struct TYPE_2__ {int (* init_hw ) (struct pch_gbe_hw*) ;} ;


 int ENOSYS ;
 int pr_err (char*) ;
 int stub1 (struct pch_gbe_hw*) ;

inline s32 pch_gbe_hal_init_hw(struct pch_gbe_hw *hw)
{
 if (!hw->func->init_hw) {
  pr_err("ERROR: configuration\n");
  return -ENOSYS;
 }
 return hw->func->init_hw(hw);
}
