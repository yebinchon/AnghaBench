
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct b43legacy_wldev {int wl; } ;


 int B43legacy_MACCTL_GMODE ;
 int B43legacy_MACCTL_IHR_ENABLED ;
 int B43legacy_MMIO_GEN_IRQ_REASON ;
 int B43legacy_MMIO_MACCTL ;
 int B43legacy_SHM_SHARED ;
 int ENODEV ;
 int b43legacy_read32 (struct b43legacy_wldev*,int ) ;
 int b43legacy_shm_read32 (struct b43legacy_wldev*,int ,int ) ;
 int b43legacy_shm_write32 (struct b43legacy_wldev*,int ,int ,int) ;
 int b43legacyerr (int ,char*) ;

__attribute__((used)) static int b43legacy_validate_chipaccess(struct b43legacy_wldev *dev)
{
 u32 value;
 u32 shm_backup;

 shm_backup = b43legacy_shm_read32(dev, B43legacy_SHM_SHARED, 0);
 b43legacy_shm_write32(dev, B43legacy_SHM_SHARED, 0, 0xAA5555AA);
 if (b43legacy_shm_read32(dev, B43legacy_SHM_SHARED, 0) !=
     0xAA5555AA)
  goto error;
 b43legacy_shm_write32(dev, B43legacy_SHM_SHARED, 0, 0x55AAAA55);
 if (b43legacy_shm_read32(dev, B43legacy_SHM_SHARED, 0) !=
     0x55AAAA55)
  goto error;
 b43legacy_shm_write32(dev, B43legacy_SHM_SHARED, 0, shm_backup);

 value = b43legacy_read32(dev, B43legacy_MMIO_MACCTL);
 if ((value | B43legacy_MACCTL_GMODE) !=
     (B43legacy_MACCTL_GMODE | B43legacy_MACCTL_IHR_ENABLED))
  goto error;

 value = b43legacy_read32(dev, B43legacy_MMIO_GEN_IRQ_REASON);
 if (value)
  goto error;

 return 0;
error:
 b43legacyerr(dev->wl, "Failed to validate the chipaccess\n");
 return -ENODEV;
}
