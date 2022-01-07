
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
 int IXGBE_VLVF (int) ;
 int IXGBE_VLVFB (int) ;
 int IXGBE_VLVF_VIEN ;
 int IXGBE_VT_CTL ;
 int IXGBE_VT_CTL_VT_ENABLE ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int ixgbe_find_vlvf_slot (struct ixgbe_hw*,int) ;

s32 ixgbe_set_vfta_generic(struct ixgbe_hw *hw, u32 vlan, u32 vind,
                           bool vlan_on)
{
 s32 regindex;
 u32 bitindex;
 u32 vfta;
 u32 bits;
 u32 vt;
 u32 targetbit;
 bool vfta_changed = 0;

 if (vlan > 4095)
  return IXGBE_ERR_PARAM;
 regindex = (vlan >> 5) & 0x7F;
 bitindex = vlan & 0x1F;
 targetbit = (1 << bitindex);
 vfta = IXGBE_READ_REG(hw, IXGBE_VFTA(regindex));

 if (vlan_on) {
  if (!(vfta & targetbit)) {
   vfta |= targetbit;
   vfta_changed = 1;
  }
 } else {
  if ((vfta & targetbit)) {
   vfta &= ~targetbit;
   vfta_changed = 1;
  }
 }
 vt = IXGBE_READ_REG(hw, IXGBE_VT_CTL);
 if (vt & IXGBE_VT_CTL_VT_ENABLE) {
  s32 vlvf_index;

  vlvf_index = ixgbe_find_vlvf_slot(hw, vlan);
  if (vlvf_index < 0)
   return vlvf_index;

  if (vlan_on) {

   if (vind < 32) {
    bits = IXGBE_READ_REG(hw,
      IXGBE_VLVFB(vlvf_index*2));
    bits |= (1 << vind);
    IXGBE_WRITE_REG(hw,
      IXGBE_VLVFB(vlvf_index*2),
      bits);
   } else {
    bits = IXGBE_READ_REG(hw,
      IXGBE_VLVFB((vlvf_index*2)+1));
    bits |= (1 << (vind-32));
    IXGBE_WRITE_REG(hw,
      IXGBE_VLVFB((vlvf_index*2)+1),
      bits);
   }
  } else {

   if (vind < 32) {
    bits = IXGBE_READ_REG(hw,
      IXGBE_VLVFB(vlvf_index*2));
    bits &= ~(1 << vind);
    IXGBE_WRITE_REG(hw,
      IXGBE_VLVFB(vlvf_index*2),
      bits);
    bits |= IXGBE_READ_REG(hw,
      IXGBE_VLVFB((vlvf_index*2)+1));
   } else {
    bits = IXGBE_READ_REG(hw,
      IXGBE_VLVFB((vlvf_index*2)+1));
    bits &= ~(1 << (vind-32));
    IXGBE_WRITE_REG(hw,
      IXGBE_VLVFB((vlvf_index*2)+1),
      bits);
    bits |= IXGBE_READ_REG(hw,
      IXGBE_VLVFB(vlvf_index*2));
   }
  }
  if (bits) {
   IXGBE_WRITE_REG(hw, IXGBE_VLVF(vlvf_index),
     (IXGBE_VLVF_VIEN | vlan));
   if (!vlan_on) {



    vfta_changed = 0;
   }
  }
  else
   IXGBE_WRITE_REG(hw, IXGBE_VLVF(vlvf_index), 0);
 }

 if (vfta_changed)
  IXGBE_WRITE_REG(hw, IXGBE_VFTA(regindex), vfta);

 return 0;
}
