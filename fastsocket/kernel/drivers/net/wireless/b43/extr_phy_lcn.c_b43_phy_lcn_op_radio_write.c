
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int dummy; } ;


 int B43_MMIO_RADIO24_CONTROL ;
 int B43_MMIO_RADIO24_DATA ;
 int b43_write16 (struct b43_wldev*,int ,int ) ;

__attribute__((used)) static void b43_phy_lcn_op_radio_write(struct b43_wldev *dev, u16 reg,
           u16 value)
{
 b43_write16(dev, B43_MMIO_RADIO24_CONTROL, reg);
 b43_write16(dev, B43_MMIO_RADIO24_DATA, value);
}
