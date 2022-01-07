
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct ixgbe_hw {int dummy; } ;
typedef int s32 ;


 int IXGBE_ERR_PARAM ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_VFTA (int) ;
 int IXGBE_VFTAVIND (int,int) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;

__attribute__((used)) static s32 ixgbe_set_vfta_82598(struct ixgbe_hw *hw, u32 vlan, u32 vind,
    bool vlan_on)
{
 u32 regindex;
 u32 bitindex;
 u32 bits;
 u32 vftabyte;

 if (vlan > 4095)
  return IXGBE_ERR_PARAM;


 regindex = (vlan >> 5) & 0x7F;


 vftabyte = ((vlan >> 3) & 0x03);
 bitindex = (vlan & 0x7) << 2;


 bits = IXGBE_READ_REG(hw, IXGBE_VFTAVIND(vftabyte, regindex));
 bits &= (~(0x0F << bitindex));
 bits |= (vind << bitindex);
 IXGBE_WRITE_REG(hw, IXGBE_VFTAVIND(vftabyte, regindex), bits);


 bitindex = vlan & 0x1F;

 bits = IXGBE_READ_REG(hw, IXGBE_VFTA(regindex));
 if (vlan_on)

  bits |= (1 << bitindex);
 else

  bits &= ~(1 << bitindex);
 IXGBE_WRITE_REG(hw, IXGBE_VFTA(regindex), bits);

 return 0;
}
