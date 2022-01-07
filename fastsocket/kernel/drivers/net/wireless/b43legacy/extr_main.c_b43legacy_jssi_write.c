
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct b43legacy_wldev {int dummy; } ;


 int B43legacy_SHM_SHARED ;
 int b43legacy_shm_write16 (struct b43legacy_wldev*,int ,int,int) ;

__attribute__((used)) static void b43legacy_jssi_write(struct b43legacy_wldev *dev, u32 jssi)
{
 b43legacy_shm_write16(dev, B43legacy_SHM_SHARED, 0x408,
         (jssi & 0x0000FFFF));
 b43legacy_shm_write16(dev, B43legacy_SHM_SHARED, 0x40A,
         (jssi & 0xFFFF0000) >> 16);
}
