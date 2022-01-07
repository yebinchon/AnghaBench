
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct b43_wldev {int dummy; } ;


 int B43_SHM_SHARED ;
 int B43_SHM_SH_HOSTF1 ;
 int B43_SHM_SH_HOSTF2 ;
 int B43_SHM_SH_HOSTF3 ;
 int b43_shm_read16 (struct b43_wldev*,int ,int ) ;

u64 b43_hf_read(struct b43_wldev *dev)
{
 u64 ret;

 ret = b43_shm_read16(dev, B43_SHM_SHARED, B43_SHM_SH_HOSTF3);
 ret <<= 16;
 ret |= b43_shm_read16(dev, B43_SHM_SHARED, B43_SHM_SH_HOSTF2);
 ret <<= 16;
 ret |= b43_shm_read16(dev, B43_SHM_SHARED, B43_SHM_SH_HOSTF1);

 return ret;
}
