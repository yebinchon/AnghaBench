
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rev; } ;
struct b43_wldev {TYPE_1__ phy; } ;
struct b43_nphy_channeltab_entry_rev2 {int dummy; } ;


 int B2055_VCO_CAL10 ;
 int B43_MMIO_MACCTL ;
 int B43_WARN_ON (int) ;
 int b43_chantab_radio_upload (struct b43_wldev*,struct b43_nphy_channeltab_entry_rev2 const*) ;
 int b43_radio_write (struct b43_wldev*,int ,int) ;
 int b43_read32 (struct b43_wldev*,int ) ;
 int udelay (int) ;

__attribute__((used)) static void b43_radio_2055_setup(struct b43_wldev *dev,
    const struct b43_nphy_channeltab_entry_rev2 *e)
{
 B43_WARN_ON(dev->phy.rev >= 3);

 b43_chantab_radio_upload(dev, e);
 udelay(50);
 b43_radio_write(dev, B2055_VCO_CAL10, 0x05);
 b43_radio_write(dev, B2055_VCO_CAL10, 0x45);
 b43_read32(dev, B43_MMIO_MACCTL);
 b43_radio_write(dev, B2055_VCO_CAL10, 0x65);
 udelay(300);
}
