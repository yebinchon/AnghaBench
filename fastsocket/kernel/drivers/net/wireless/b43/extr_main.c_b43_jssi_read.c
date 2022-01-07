
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct b43_wldev {int dummy; } ;


 int B43_SHM_SHARED ;
 int B43_SHM_SH_JSSI0 ;
 int B43_SHM_SH_JSSI1 ;
 int b43_shm_read16 (struct b43_wldev*,int ,int ) ;

__attribute__((used)) static u32 b43_jssi_read(struct b43_wldev *dev)
{
 u32 val = 0;

 val = b43_shm_read16(dev, B43_SHM_SHARED, B43_SHM_SH_JSSI1);
 val <<= 16;
 val |= b43_shm_read16(dev, B43_SHM_SHARED, B43_SHM_SH_JSSI0);

 return val;
}
