
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_phy {int type; } ;
struct b43legacy_wldev {struct b43legacy_phy phy; } ;




 int B43legacy_SHM_SHARED ;
 int b43legacy_shm_write16 (struct b43legacy_wldev*,int ,int,int) ;

void b43legacy_radio_clear_tssi(struct b43legacy_wldev *dev)
{
 struct b43legacy_phy *phy = &dev->phy;

 switch (phy->type) {
 case 129:
 case 128:
  b43legacy_shm_write16(dev, B43legacy_SHM_SHARED, 0x0058,
          0x7F7F);
  b43legacy_shm_write16(dev, B43legacy_SHM_SHARED, 0x005a,
          0x7F7F);
  b43legacy_shm_write16(dev, B43legacy_SHM_SHARED, 0x0070,
          0x7F7F);
  b43legacy_shm_write16(dev, B43legacy_SHM_SHARED, 0x0072,
          0x7F7F);
  break;
 }
}
