
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* ops; } ;
struct b43_wldev {TYPE_2__ phy; } ;
struct TYPE_3__ {int (* get_default_chan ) (struct b43_wldev*) ;} ;


 int aphy_channel_switch (struct b43_wldev*,int ) ;
 int b43_phy_write (struct b43_wldev*,int,int) ;
 int b43_radio_mask (struct b43_wldev*,int,int) ;
 int b43_radio_maskset (struct b43_wldev*,int,int,int) ;
 int b43_radio_read16 (struct b43_wldev*,int) ;
 int b43_radio_write16 (struct b43_wldev*,int,int) ;
 int msleep (int) ;
 int stub1 (struct b43_wldev*) ;

__attribute__((used)) static void b43_radio_init2060(struct b43_wldev *dev)
{
 b43_radio_write16(dev, 0x0004, 0x00C0);
 b43_radio_write16(dev, 0x0005, 0x0008);
 b43_radio_write16(dev, 0x0009, 0x0040);
 b43_radio_write16(dev, 0x0005, 0x00AA);
 b43_radio_write16(dev, 0x0032, 0x008F);
 b43_radio_write16(dev, 0x0006, 0x008F);
 b43_radio_write16(dev, 0x0034, 0x008F);
 b43_radio_write16(dev, 0x002C, 0x0007);
 b43_radio_write16(dev, 0x0082, 0x0080);
 b43_radio_write16(dev, 0x0080, 0x0000);
 b43_radio_write16(dev, 0x003F, 0x00DA);
 b43_radio_mask(dev, 0x0005, ~0x0008);
 b43_radio_mask(dev, 0x0081, ~0x0010);
 b43_radio_mask(dev, 0x0081, ~0x0020);
 b43_radio_mask(dev, 0x0081, ~0x0020);
 msleep(1);

 b43_radio_maskset(dev, 0x0081, ~0x0020, 0x0010);
 msleep(1);

 b43_radio_maskset(dev, 0x0005, ~0x0008, 0x0008);
 b43_radio_mask(dev, 0x0085, ~0x0010);
 b43_radio_mask(dev, 0x0005, ~0x0008);
 b43_radio_mask(dev, 0x0081, ~0x0040);
 b43_radio_maskset(dev, 0x0081, ~0x0040, 0x0040);
 b43_radio_write16(dev, 0x0005,
     (b43_radio_read16(dev, 0x0081) & ~0x0008) | 0x0008);
 b43_phy_write(dev, 0x0063, 0xDDC6);
 b43_phy_write(dev, 0x0069, 0x07BE);
 b43_phy_write(dev, 0x006A, 0x0000);

 aphy_channel_switch(dev, dev->phy.ops->get_default_chan(dev));

 msleep(1);
}
