
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct b43_wldev {int wl; TYPE_1__* dev; } ;
struct TYPE_2__ {int core_rev; } ;


 int B43_MACCTL_GMODE ;
 int B43_MACCTL_IHR_ENABLED ;
 int B43_MMIO_MACCTL ;
 int B43_MMIO_TSF_CFP_START ;
 int B43_MMIO_TSF_CFP_START_HIGH ;
 int B43_MMIO_TSF_CFP_START_LOW ;
 int B43_SHM_SHARED ;
 int ENODEV ;
 int b43_read16 (struct b43_wldev*,int ) ;
 int b43_read32 (struct b43_wldev*,int ) ;
 int b43_shm_read16 (struct b43_wldev*,int ,int) ;
 int b43_shm_read32 (struct b43_wldev*,int ,int) ;
 int b43_shm_write16 (struct b43_wldev*,int ,int,int) ;
 int b43_shm_write32 (struct b43_wldev*,int ,int,int) ;
 int b43_write16 (struct b43_wldev*,int ,int) ;
 int b43_write32 (struct b43_wldev*,int ,int) ;
 int b43err (int ,char*) ;
 int b43warn (int ,char*) ;

__attribute__((used)) static int b43_validate_chipaccess(struct b43_wldev *dev)
{
 u32 v, backup0, backup4;

 backup0 = b43_shm_read32(dev, B43_SHM_SHARED, 0);
 backup4 = b43_shm_read32(dev, B43_SHM_SHARED, 4);


 b43_shm_write32(dev, B43_SHM_SHARED, 0, 0x55AAAA55);
 if (b43_shm_read32(dev, B43_SHM_SHARED, 0) != 0x55AAAA55)
  goto error;
 b43_shm_write32(dev, B43_SHM_SHARED, 0, 0xAA5555AA);
 if (b43_shm_read32(dev, B43_SHM_SHARED, 0) != 0xAA5555AA)
  goto error;



 b43_shm_write16(dev, B43_SHM_SHARED, 0, 0x1122);
 b43_shm_write16(dev, B43_SHM_SHARED, 2, 0x3344);
 b43_shm_write16(dev, B43_SHM_SHARED, 4, 0x5566);
 b43_shm_write16(dev, B43_SHM_SHARED, 6, 0x7788);
 if (b43_shm_read32(dev, B43_SHM_SHARED, 2) != 0x55663344)
  b43warn(dev->wl, "Unaligned 32bit SHM read access is broken\n");
 b43_shm_write32(dev, B43_SHM_SHARED, 2, 0xAABBCCDD);
 if (b43_shm_read16(dev, B43_SHM_SHARED, 0) != 0x1122 ||
     b43_shm_read16(dev, B43_SHM_SHARED, 2) != 0xCCDD ||
     b43_shm_read16(dev, B43_SHM_SHARED, 4) != 0xAABB ||
     b43_shm_read16(dev, B43_SHM_SHARED, 6) != 0x7788)
  b43warn(dev->wl, "Unaligned 32bit SHM write access is broken\n");

 b43_shm_write32(dev, B43_SHM_SHARED, 0, backup0);
 b43_shm_write32(dev, B43_SHM_SHARED, 4, backup4);

 if ((dev->dev->core_rev >= 3) && (dev->dev->core_rev <= 10)) {


  b43_write16(dev, B43_MMIO_TSF_CFP_START, 0xAAAA);
  b43_write32(dev, B43_MMIO_TSF_CFP_START, 0xCCCCBBBB);
  if (b43_read16(dev, B43_MMIO_TSF_CFP_START_LOW) != 0xBBBB)
   goto error;
  if (b43_read16(dev, B43_MMIO_TSF_CFP_START_HIGH) != 0xCCCC)
   goto error;
 }
 b43_write32(dev, B43_MMIO_TSF_CFP_START, 0);

 v = b43_read32(dev, B43_MMIO_MACCTL);
 v |= B43_MACCTL_GMODE;
 if (v != (B43_MACCTL_GMODE | B43_MACCTL_IHR_ENABLED))
  goto error;

 return 0;
error:
 b43err(dev->wl, "Failed to validate the chipaccess\n");
 return -ENODEV;
}
