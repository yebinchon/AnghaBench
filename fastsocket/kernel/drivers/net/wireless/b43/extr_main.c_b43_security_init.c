
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int ktp; } ;


 int B43_MMIO_RCMTA_COUNT ;
 int B43_NR_PAIRWISE_KEYS ;
 int B43_SHM_SHARED ;
 int B43_SHM_SH_KTP ;
 int b43_clear_keys (struct b43_wldev*) ;
 int b43_shm_read16 (struct b43_wldev*,int ,int ) ;
 int b43_write16 (struct b43_wldev*,int ,int ) ;

__attribute__((used)) static void b43_security_init(struct b43_wldev *dev)
{
 dev->ktp = b43_shm_read16(dev, B43_SHM_SHARED, B43_SHM_SH_KTP);



 dev->ktp *= 2;

 b43_write16(dev, B43_MMIO_RCMTA_COUNT, B43_NR_PAIRWISE_KEYS);

 b43_clear_keys(dev);
}
