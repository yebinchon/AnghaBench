
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int dummy; } ;


 int B43_MMIO_PHY_CONTROL ;
 int B43_MMIO_PHY_DATA ;
 int b43_maskset16 (struct b43_wldev*,int ,int ,int ) ;
 int b43_write16 (struct b43_wldev*,int ,int ) ;
 int check_phyreg (struct b43_wldev*,int ) ;

__attribute__((used)) static void b43_nphy_op_maskset(struct b43_wldev *dev, u16 reg, u16 mask,
     u16 set)
{
 check_phyreg(dev, reg);
 b43_write16(dev, B43_MMIO_PHY_CONTROL, reg);
 b43_maskset16(dev, B43_MMIO_PHY_DATA, mask, set);
}
