
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int dummy; } ;


 int B43_NTAB16 (int,int) ;
 int B43_SHM_SHARED ;
 int B43_SHM_SH_NPHY_TXIQW0 ;
 int B43_SHM_SH_NPHY_TXIQW1 ;
 int B43_SHM_SH_NPHY_TXIQW2 ;
 int B43_SHM_SH_NPHY_TXIQW3 ;
 int b43_ntab_read_bulk (struct b43_wldev*,int ,int,int *) ;
 int b43_shm_write16 (struct b43_wldev*,int ,int ,int ) ;

__attribute__((used)) static void b43_nphy_tx_iq_workaround(struct b43_wldev *dev)
{
 u16 array[4];
 b43_ntab_read_bulk(dev, B43_NTAB16(0xF, 0x50), 4, array);

 b43_shm_write16(dev, B43_SHM_SHARED, B43_SHM_SH_NPHY_TXIQW0, array[0]);
 b43_shm_write16(dev, B43_SHM_SHARED, B43_SHM_SH_NPHY_TXIQW1, array[1]);
 b43_shm_write16(dev, B43_SHM_SHARED, B43_SHM_SH_NPHY_TXIQW2, array[2]);
 b43_shm_write16(dev, B43_SHM_SHARED, B43_SHM_SH_NPHY_TXIQW3, array[3]);
}
