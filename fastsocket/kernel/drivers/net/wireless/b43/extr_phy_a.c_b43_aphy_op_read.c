
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int dummy; } ;


 int B43_MMIO_PHY_CONTROL ;
 int B43_MMIO_PHY_DATA ;
 int adjust_phyreg (struct b43_wldev*,int ) ;
 int b43_read16 (struct b43_wldev*,int ) ;
 int b43_write16 (struct b43_wldev*,int ,int ) ;

__attribute__((used)) static u16 b43_aphy_op_read(struct b43_wldev *dev, u16 reg)
{
 reg = adjust_phyreg(dev, reg);
 b43_write16(dev, B43_MMIO_PHY_CONTROL, reg);
 return b43_read16(dev, B43_MMIO_PHY_DATA);
}
