
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct shared_phy_params {int boardflags2; int boardflags; int boardrev; int boardtype; int sromrev; int chippkg; int chiprev; int chip; int did; int vid; int corerev; int unit; int physhim; int sih; } ;
struct shared_phy {int rssi_mode; int glacial_timer; int slow_timer; int fast_timer; int boardflags2; int boardflags; int boardrev; int boardtype; int sromrev; int chippkg; int chiprev; int chip; int did; int vid; int corerev; int unit; int physhim; int sih; } ;


 int GFP_ATOMIC ;
 int PHY_SW_TIMER_FAST ;
 int PHY_SW_TIMER_GLACIAL ;
 int PHY_SW_TIMER_SLOW ;
 int RSSI_ANT_MERGE_MAX ;
 struct shared_phy* kzalloc (int,int ) ;

struct shared_phy *wlc_phy_shared_attach(struct shared_phy_params *shp)
{
 struct shared_phy *sh;

 sh = kzalloc(sizeof(struct shared_phy), GFP_ATOMIC);
 if (sh == ((void*)0))
  return ((void*)0);

 sh->sih = shp->sih;
 sh->physhim = shp->physhim;
 sh->unit = shp->unit;
 sh->corerev = shp->corerev;

 sh->vid = shp->vid;
 sh->did = shp->did;
 sh->chip = shp->chip;
 sh->chiprev = shp->chiprev;
 sh->chippkg = shp->chippkg;
 sh->sromrev = shp->sromrev;
 sh->boardtype = shp->boardtype;
 sh->boardrev = shp->boardrev;
 sh->boardflags = shp->boardflags;
 sh->boardflags2 = shp->boardflags2;

 sh->fast_timer = PHY_SW_TIMER_FAST;
 sh->slow_timer = PHY_SW_TIMER_SLOW;
 sh->glacial_timer = PHY_SW_TIMER_GLACIAL;

 sh->rssi_mode = RSSI_ANT_MERGE_MAX;

 return sh;
}
