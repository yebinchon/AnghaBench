
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct b43_phy {struct b43_phy_a* a; } ;
struct b43_wldev {int wl; TYPE_2__* dev; struct b43_phy phy; } ;
struct b43_phy_a {int tgt_idle_tssi; int * tssi2dbm; } ;
typedef scalar_t__ s8 ;
typedef int s16 ;
struct TYPE_4__ {TYPE_1__* bus_sprom; } ;
struct TYPE_3__ {scalar_t__ itssi_a; scalar_t__ pa1b2; scalar_t__ pa1b1; scalar_t__ pa1b0; } ;


 int ENODEV ;
 int ENOMEM ;
 int * b43_generate_dyn_tssi2dbm_tab (struct b43_wldev*,int,int,int) ;
 int b43err (int ,char*) ;

__attribute__((used)) static int b43_aphy_init_tssi2dbm_table(struct b43_wldev *dev)
{
 struct b43_phy *phy = &dev->phy;
 struct b43_phy_a *aphy = phy->a;
 s16 pab0, pab1, pab2;

 pab0 = (s16) (dev->dev->bus_sprom->pa1b0);
 pab1 = (s16) (dev->dev->bus_sprom->pa1b1);
 pab2 = (s16) (dev->dev->bus_sprom->pa1b2);

 if (pab0 != 0 && pab1 != 0 && pab2 != 0 &&
     pab0 != -1 && pab1 != -1 && pab2 != -1) {

  if ((s8) dev->dev->bus_sprom->itssi_a != 0 &&
      (s8) dev->dev->bus_sprom->itssi_a != -1)
   aphy->tgt_idle_tssi =
       (s8) (dev->dev->bus_sprom->itssi_a);
  else
   aphy->tgt_idle_tssi = 62;
  aphy->tssi2dbm = b43_generate_dyn_tssi2dbm_tab(dev, pab0,
              pab1, pab2);
  if (!aphy->tssi2dbm)
   return -ENOMEM;
 } else {


  aphy->tssi2dbm = ((void*)0);
  b43err(dev->wl, "Could not generate tssi2dBm "
         "table (wrong SPROM info)!\n");
  return -ENODEV;
 }

 return 0;
}
