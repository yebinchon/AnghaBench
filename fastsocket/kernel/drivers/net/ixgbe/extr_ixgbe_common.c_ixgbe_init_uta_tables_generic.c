
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int IXGBE_UTA (int) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int ) ;

s32 ixgbe_init_uta_tables_generic(struct ixgbe_hw *hw)
{
 int i;

 for (i = 0; i < 128; i++)
  IXGBE_WRITE_REG(hw, IXGBE_UTA(i), 0);

 return 0;
}
