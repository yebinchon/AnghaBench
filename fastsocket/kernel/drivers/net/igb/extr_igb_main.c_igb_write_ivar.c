
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct e1000_hw {int dummy; } ;


 int E1000_IVAR0 ;
 int E1000_IVAR_VALID ;
 int array_rd32 (int ,int) ;
 int array_wr32 (int ,int,int) ;

__attribute__((used)) static void igb_write_ivar(struct e1000_hw *hw, int msix_vector,
      int index, int offset)
{
 u32 ivar = array_rd32(E1000_IVAR0, index);


 ivar &= ~((u32)0xFF << offset);


 ivar |= (msix_vector | E1000_IVAR_VALID) << offset;

 array_wr32(E1000_IVAR0, index, ivar);
}
