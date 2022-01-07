
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct b43_wldev {int dummy; } ;


 int b43_phy_ht_load_samples (struct b43_wldev*) ;
 int b43_phy_ht_run_samples (struct b43_wldev*,int ,int,int ) ;

__attribute__((used)) static void b43_phy_ht_tx_tone(struct b43_wldev *dev)
{
 u16 samp;

 samp = b43_phy_ht_load_samples(dev);
 b43_phy_ht_run_samples(dev, samp, 0xFFFF, 0);
}
