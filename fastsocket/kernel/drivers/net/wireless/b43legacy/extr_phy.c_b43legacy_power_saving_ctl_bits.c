
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u32 ;
struct b43legacy_wldev {TYPE_2__* dev; } ;
struct TYPE_3__ {int revision; } ;
struct TYPE_4__ {TYPE_1__ id; } ;


 int B43legacy_MACCTL_AWAKE ;
 int B43legacy_MACCTL_HWPS ;
 int B43legacy_MMIO_MACCTL ;
 int B43legacy_SHM_SHARED ;
 int b43legacy_read32 (struct b43legacy_wldev*,int ) ;
 int b43legacy_shm_read32 (struct b43legacy_wldev*,int ,int) ;
 int b43legacy_write32 (struct b43legacy_wldev*,int ,int ) ;
 int udelay (int) ;

void b43legacy_power_saving_ctl_bits(struct b43legacy_wldev *dev,
         int bit25, int bit26)
{
 int i;
 u32 status;


bit25 = 0;
bit26 = 1;

 if (bit25 == -1) {



 }
 if (bit26 == -1) {




 }
 status = b43legacy_read32(dev, B43legacy_MMIO_MACCTL);
 if (bit25)
  status |= B43legacy_MACCTL_HWPS;
 else
  status &= ~B43legacy_MACCTL_HWPS;
 if (bit26)
  status |= B43legacy_MACCTL_AWAKE;
 else
  status &= ~B43legacy_MACCTL_AWAKE;
 b43legacy_write32(dev, B43legacy_MMIO_MACCTL, status);
 if (bit26 && dev->dev->id.revision >= 5) {
  for (i = 0; i < 100; i++) {
   if (b43legacy_shm_read32(dev, B43legacy_SHM_SHARED,
       0x0040) != 4)
    break;
   udelay(10);
  }
 }
}
