
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct b43legacy_phy {int type; int radio_ver; int idle_tssi; scalar_t__* tssi2dbm; int dyn_tssi_tbl; } ;
struct b43legacy_wldev {int wl; TYPE_3__* dev; struct b43legacy_phy phy; } ;
typedef scalar_t__ s8 ;
typedef int s16 ;
struct TYPE_6__ {TYPE_2__* bus; } ;
struct TYPE_4__ {scalar_t__ itssi_bg; scalar_t__ pa0b2; scalar_t__ pa0b1; scalar_t__ pa0b0; } ;
struct TYPE_5__ {int chip_id; TYPE_1__ sprom; } ;




 int B43legacy_WARN_ON (int) ;
 int ENODEV ;
 int ENOMEM ;
 int GFP_KERNEL ;
 void* b43legacy_tssi2dbm_b_table ;
 scalar_t__ b43legacy_tssi2dbm_entry (scalar_t__*,int,int,int,int) ;
 scalar_t__* b43legacy_tssi2dbm_g_table ;
 int b43legacyerr (int ,char*) ;
 int kfree (scalar_t__*) ;
 scalar_t__* kmalloc (int,int ) ;

int b43legacy_phy_init_tssi2dbm_table(struct b43legacy_wldev *dev)
{
 struct b43legacy_phy *phy = &dev->phy;
 s16 pab0;
 s16 pab1;
 s16 pab2;
 u8 idx;
 s8 *dyn_tssi2dbm;

 B43legacy_WARN_ON(!(phy->type == 129 ||
     phy->type == 128));
 pab0 = (s16)(dev->dev->bus->sprom.pa0b0);
 pab1 = (s16)(dev->dev->bus->sprom.pa0b1);
 pab2 = (s16)(dev->dev->bus->sprom.pa0b2);

 if ((dev->dev->bus->chip_id == 0x4301) && (phy->radio_ver != 0x2050)) {
  phy->idle_tssi = 0x34;
  phy->tssi2dbm = b43legacy_tssi2dbm_b_table;
  return 0;
 }

 if (pab0 != 0 && pab1 != 0 && pab2 != 0 &&
     pab0 != -1 && pab1 != -1 && pab2 != -1) {

  if ((s8)dev->dev->bus->sprom.itssi_bg != 0 &&
      (s8)dev->dev->bus->sprom.itssi_bg != -1)
   phy->idle_tssi = (s8)(dev->dev->bus->sprom.
       itssi_bg);
  else
   phy->idle_tssi = 62;
  dyn_tssi2dbm = kmalloc(64, GFP_KERNEL);
  if (dyn_tssi2dbm == ((void*)0)) {
   b43legacyerr(dev->wl, "Could not allocate memory "
          "for tssi2dbm table\n");
   return -ENOMEM;
  }
  for (idx = 0; idx < 64; idx++)
   if (b43legacy_tssi2dbm_entry(dyn_tssi2dbm, idx, pab0,
           pab1, pab2)) {
    phy->tssi2dbm = ((void*)0);
    b43legacyerr(dev->wl, "Could not generate "
           "tssi2dBm table\n");
    kfree(dyn_tssi2dbm);
    return -ENODEV;
   }
  phy->tssi2dbm = dyn_tssi2dbm;
  phy->dyn_tssi_tbl = 1;
 } else {

  switch (phy->type) {
  case 129:
   phy->idle_tssi = 0x34;
   phy->tssi2dbm = b43legacy_tssi2dbm_b_table;
   break;
  case 128:
   phy->idle_tssi = 0x34;
   phy->tssi2dbm = b43legacy_tssi2dbm_g_table;
   break;
  }
 }

 return 0;
}
