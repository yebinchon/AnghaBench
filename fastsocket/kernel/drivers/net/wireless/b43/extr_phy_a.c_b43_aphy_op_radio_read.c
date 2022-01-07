
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int dummy; } ;


 int B43_MMIO_RADIO_CONTROL ;
 int B43_MMIO_RADIO_DATA_LOW ;
 int B43_WARN_ON (int) ;
 int b43_read16 (struct b43_wldev*,int ) ;
 int b43_write16 (struct b43_wldev*,int ,int) ;

__attribute__((used)) static u16 b43_aphy_op_radio_read(struct b43_wldev *dev, u16 reg)
{

 B43_WARN_ON(reg == 1);

 reg |= 0x40;

 b43_write16(dev, B43_MMIO_RADIO_CONTROL, reg);
 return b43_read16(dev, B43_MMIO_RADIO_DATA_LOW);
}
