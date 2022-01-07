
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;


 int B43_SHM_SHARED ;
 int b43_shm_write16 (struct b43_wldev*,int ,int,int) ;

__attribute__((used)) static void b43_shm_clear_tssi(struct b43_wldev *dev)
{
 b43_shm_write16(dev, B43_SHM_SHARED, 0x0058, 0x7F7F);
 b43_shm_write16(dev, B43_SHM_SHARED, 0x005a, 0x7F7F);
 b43_shm_write16(dev, B43_SHM_SHARED, 0x0070, 0x7F7F);
 b43_shm_write16(dev, B43_SHM_SHARED, 0x0072, 0x7F7F);
}
