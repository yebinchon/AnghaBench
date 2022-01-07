
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int dummy; } ;


 int B43_SHM_SHARED ;
 int B43_SHM_SH_ACKCTSPHYCTL ;
 int B43_SHM_SH_BEACPHYCTL ;
 int B43_SHM_SH_PRPHYCTL ;
 int B43_TXH_PHY_ANT01AUTO ;
 int B43_TXH_PHY_ENC_CCK ;
 int B43_TXH_PHY_TXPWR ;
 int b43_shm_write16 (struct b43_wldev*,int ,int ,int ) ;

__attribute__((used)) static void b43_set_phytxctl_defaults(struct b43_wldev *dev)
{
 u16 ctl = 0;

 ctl |= B43_TXH_PHY_ENC_CCK;
 ctl |= B43_TXH_PHY_ANT01AUTO;
 ctl |= B43_TXH_PHY_TXPWR;

 b43_shm_write16(dev, B43_SHM_SHARED, B43_SHM_SH_BEACPHYCTL, ctl);
 b43_shm_write16(dev, B43_SHM_SHARED, B43_SHM_SH_ACKCTSPHYCTL, ctl);
 b43_shm_write16(dev, B43_SHM_SHARED, B43_SHM_SH_PRPHYCTL, ctl);
}
