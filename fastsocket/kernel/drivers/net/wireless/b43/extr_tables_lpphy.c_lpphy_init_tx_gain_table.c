
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ssb_sprom {int boardflags_hi; int boardflags_lo; } ;
struct TYPE_4__ {int rev; } ;
struct b43_wldev {int wl; TYPE_2__ phy; TYPE_1__* dev; } ;
struct TYPE_3__ {struct ssb_sprom* bus_sprom; } ;


 int B43_BFH_NOPA ;
 int B43_BFL_HGPA ;
 int IEEE80211_BAND_2GHZ ;
 int b43_current_band (int ) ;
 int lpphy_rev0_2ghz_tx_gain_table ;
 int lpphy_rev0_5ghz_tx_gain_table ;
 int lpphy_rev0_nopa_tx_gain_table ;
 int lpphy_rev1_2ghz_tx_gain_table ;
 int lpphy_rev1_5ghz_tx_gain_table ;
 int lpphy_rev1_nopa_tx_gain_table ;
 int lpphy_rev2_2ghz_tx_gain_table ;
 int lpphy_rev2_5ghz_tx_gain_table ;
 int lpphy_rev2_nopa_tx_gain_table ;
 int lpphy_write_gain_table_bulk (struct b43_wldev*,int ,int,int ) ;

void lpphy_init_tx_gain_table(struct b43_wldev *dev)
{
 struct ssb_sprom *sprom = dev->dev->bus_sprom;

 switch (dev->phy.rev) {
 case 0:
  if ((sprom->boardflags_hi & B43_BFH_NOPA) ||
      (sprom->boardflags_lo & B43_BFL_HGPA))
   lpphy_write_gain_table_bulk(dev, 0, 128,
     lpphy_rev0_nopa_tx_gain_table);
  else if (b43_current_band(dev->wl) == IEEE80211_BAND_2GHZ)
   lpphy_write_gain_table_bulk(dev, 0, 128,
     lpphy_rev0_2ghz_tx_gain_table);
  else
   lpphy_write_gain_table_bulk(dev, 0, 128,
     lpphy_rev0_5ghz_tx_gain_table);
  break;
 case 1:
  if ((sprom->boardflags_hi & B43_BFH_NOPA) ||
      (sprom->boardflags_lo & B43_BFL_HGPA))
   lpphy_write_gain_table_bulk(dev, 0, 128,
     lpphy_rev1_nopa_tx_gain_table);
  else if (b43_current_band(dev->wl) == IEEE80211_BAND_2GHZ)
   lpphy_write_gain_table_bulk(dev, 0, 128,
     lpphy_rev1_2ghz_tx_gain_table);
  else
   lpphy_write_gain_table_bulk(dev, 0, 128,
     lpphy_rev1_5ghz_tx_gain_table);
  break;
 default:
  if (sprom->boardflags_hi & B43_BFH_NOPA)
   lpphy_write_gain_table_bulk(dev, 0, 128,
     lpphy_rev2_nopa_tx_gain_table);
  else if (b43_current_band(dev->wl) == IEEE80211_BAND_2GHZ)
   lpphy_write_gain_table_bulk(dev, 0, 128,
     lpphy_rev2_2ghz_tx_gain_table);
  else
   lpphy_write_gain_table_bulk(dev, 0, 128,
     lpphy_rev2_5ghz_tx_gain_table);
 }
}
