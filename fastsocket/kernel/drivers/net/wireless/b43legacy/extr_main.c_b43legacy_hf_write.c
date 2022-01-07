
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct b43legacy_wldev {int dummy; } ;


 int B43legacy_SHM_SHARED ;
 int B43legacy_SHM_SH_HOSTFHI ;
 int B43legacy_SHM_SH_HOSTFLO ;
 int b43legacy_shm_write16 (struct b43legacy_wldev*,int ,int ,int) ;

void b43legacy_hf_write(struct b43legacy_wldev *dev, u32 value)
{
 b43legacy_shm_write16(dev, B43legacy_SHM_SHARED,
         B43legacy_SHM_SH_HOSTFLO,
         (value & 0x0000FFFF));
 b43legacy_shm_write16(dev, B43legacy_SHM_SHARED,
         B43legacy_SHM_SH_HOSTFHI,
         ((value & 0xFFFF0000) >> 16));
}
