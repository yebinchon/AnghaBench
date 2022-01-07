
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pch_gbe_hw {TYPE_1__* func; } ;
typedef int s32 ;
struct TYPE_2__ {int (* read_mac_addr ) (struct pch_gbe_hw*) ;} ;


 int ENOSYS ;
 int pr_err (char*) ;
 int stub1 (struct pch_gbe_hw*) ;

inline s32 pch_gbe_hal_read_mac_addr(struct pch_gbe_hw *hw)
{
 if (!hw->func->read_mac_addr) {
  pr_err("ERROR: configuration\n");
  return -ENOSYS;
 }
 return hw->func->read_mac_addr(hw);
}
