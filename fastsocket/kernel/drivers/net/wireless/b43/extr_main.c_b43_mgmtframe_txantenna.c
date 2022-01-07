
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int dummy; } ;


 int B43_SHM_SHARED ;
 int B43_SHM_SH_ACKCTSPHYCTL ;
 int B43_SHM_SH_PRPHYCTL ;
 int B43_TXH_PHY_ANT ;
 int b43_antenna_to_phyctl (int) ;
 int b43_shm_read16 (struct b43_wldev*,int ,int ) ;
 int b43_shm_write16 (struct b43_wldev*,int ,int ,int) ;

__attribute__((used)) static void b43_mgmtframe_txantenna(struct b43_wldev *dev, int antenna)
{
 u16 ant;
 u16 tmp;

 ant = b43_antenna_to_phyctl(antenna);


 tmp = b43_shm_read16(dev, B43_SHM_SHARED, B43_SHM_SH_ACKCTSPHYCTL);
 tmp = (tmp & ~B43_TXH_PHY_ANT) | ant;
 b43_shm_write16(dev, B43_SHM_SHARED, B43_SHM_SH_ACKCTSPHYCTL, tmp);

 tmp = b43_shm_read16(dev, B43_SHM_SHARED, B43_SHM_SH_PRPHYCTL);
 tmp = (tmp & ~B43_TXH_PHY_ANT) | ant;
 b43_shm_write16(dev, B43_SHM_SHARED, B43_SHM_SH_PRPHYCTL, tmp);
}
