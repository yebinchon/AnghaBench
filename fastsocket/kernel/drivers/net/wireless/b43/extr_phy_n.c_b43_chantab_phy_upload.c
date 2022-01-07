
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43_wldev {int dummy; } ;
struct b43_phy_n_sfo_cfg {int phy_bw6; int phy_bw5; int phy_bw4; int phy_bw3; int phy_bw2; int phy_bw1a; } ;


 int B43_NPHY_BW1A ;
 int B43_NPHY_BW2 ;
 int B43_NPHY_BW3 ;
 int B43_NPHY_BW4 ;
 int B43_NPHY_BW5 ;
 int B43_NPHY_BW6 ;
 int b43_phy_write (struct b43_wldev*,int ,int ) ;

__attribute__((used)) static void b43_chantab_phy_upload(struct b43_wldev *dev,
       const struct b43_phy_n_sfo_cfg *e)
{
 b43_phy_write(dev, B43_NPHY_BW1A, e->phy_bw1a);
 b43_phy_write(dev, B43_NPHY_BW2, e->phy_bw2);
 b43_phy_write(dev, B43_NPHY_BW3, e->phy_bw3);
 b43_phy_write(dev, B43_NPHY_BW4, e->phy_bw4);
 b43_phy_write(dev, B43_NPHY_BW5, e->phy_bw5);
 b43_phy_write(dev, B43_NPHY_BW6, e->phy_bw6);
}
