
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pch_gbe_hw {int reg; } ;
typedef int s32 ;


 int ENOSYS ;
 int pch_gbe_plat_init_function_pointers (struct pch_gbe_hw*) ;
 int pr_err (char*) ;

inline s32 pch_gbe_hal_setup_init_funcs(struct pch_gbe_hw *hw)
{
 if (!hw->reg) {
  pr_err("ERROR: Registers not mapped\n");
  return -ENOSYS;
 }
 pch_gbe_plat_init_function_pointers(hw);
 return 0;
}
