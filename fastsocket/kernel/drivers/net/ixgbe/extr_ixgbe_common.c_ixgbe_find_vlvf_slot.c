
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int IXGBE_ERR_NO_SPACE ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_VLVF (int) ;
 int IXGBE_VLVF_ENTRIES ;
 int hw_dbg (struct ixgbe_hw*,char*) ;

__attribute__((used)) static s32 ixgbe_find_vlvf_slot(struct ixgbe_hw *hw, u32 vlan)
{
 u32 bits = 0;
 u32 first_empty_slot = 0;
 s32 regindex;


 if (vlan == 0)
  return 0;





 for (regindex = 1; regindex < IXGBE_VLVF_ENTRIES; regindex++) {
  bits = IXGBE_READ_REG(hw, IXGBE_VLVF(regindex));
  if (!bits && !(first_empty_slot))
   first_empty_slot = regindex;
  else if ((bits & 0x0FFF) == vlan)
   break;
 }






 if (regindex >= IXGBE_VLVF_ENTRIES) {
  if (first_empty_slot)
   regindex = first_empty_slot;
  else {
   hw_dbg(hw, "No space in VLVF.\n");
   regindex = IXGBE_ERR_NO_SPACE;
  }
 }

 return regindex;
}
