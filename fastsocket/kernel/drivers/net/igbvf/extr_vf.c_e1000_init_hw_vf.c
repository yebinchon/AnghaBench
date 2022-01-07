
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; } ;
struct e1000_hw {TYPE_1__ mac; } ;
typedef int s32 ;


 int E1000_SUCCESS ;
 int e1000_rar_set_vf (struct e1000_hw*,int ,int ) ;

__attribute__((used)) static s32 e1000_init_hw_vf(struct e1000_hw *hw)
{

 e1000_rar_set_vf(hw, hw->mac.addr, 0);

 return E1000_SUCCESS;
}
