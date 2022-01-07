
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
typedef int u32 ;
typedef void* u16 ;
struct ssb_sprom {int ofdm2gpo; int ofdm5glpo; int ofdm5gpo; int ofdm5ghpo; void* maxpwr_ah; void* maxpwr_a; void* maxpwr_al; int pa1hib2; int pa1hib1; int pa1hib0; int pa1lob2; int pa1lob1; int pa1lob0; int pa1b2; int pa1b1; int pa1b0; int rssisav5g; int rssismc5g; int rssismf5g; int rxpo5g; int bxa5g; int tri5gh; int tri5g; int tri5gl; void* opo; void* cck2gpo; void* maxpwr_bg; int pa0b2; int pa0b1; int pa0b0; int rssisav2g; int rssismc2g; int rssismf2g; int rxpo2g; int bxa2g; int tri2g; } ;
struct TYPE_4__ {struct b43_phy_lp* lp; } ;
struct b43_wldev {int wl; TYPE_2__ phy; TYPE_1__* dev; } ;
struct b43_phy_lp {void** tx_max_rateh; void* max_tx_pwr_hi_band; void** tx_max_rate; void* max_tx_pwr_med_band; void** tx_max_ratel; void* max_tx_pwr_low_band; int * txpah; int * txpal; int * txpa; int rssi_gs; int rssi_vc; int rssi_vf; int rx_pwr_offset; int bx_arch; int tx_isolation_hi_band; int tx_isolation_med_band; int tx_isolation_low_band; } ;
struct TYPE_3__ {struct ssb_sprom* bus_sprom; } ;


 scalar_t__ IEEE80211_BAND_2GHZ ;
 scalar_t__ b43_current_band (int ) ;

__attribute__((used)) static void lpphy_read_band_sprom(struct b43_wldev *dev)
{
 struct ssb_sprom *sprom = dev->dev->bus_sprom;
 struct b43_phy_lp *lpphy = dev->phy.lp;
 u16 cckpo, maxpwr;
 u32 ofdmpo;
 int i;

 if (b43_current_band(dev->wl) == IEEE80211_BAND_2GHZ) {
  lpphy->tx_isolation_med_band = sprom->tri2g;
  lpphy->bx_arch = sprom->bxa2g;
  lpphy->rx_pwr_offset = sprom->rxpo2g;
  lpphy->rssi_vf = sprom->rssismf2g;
  lpphy->rssi_vc = sprom->rssismc2g;
  lpphy->rssi_gs = sprom->rssisav2g;
  lpphy->txpa[0] = sprom->pa0b0;
  lpphy->txpa[1] = sprom->pa0b1;
  lpphy->txpa[2] = sprom->pa0b2;
  maxpwr = sprom->maxpwr_bg;
  lpphy->max_tx_pwr_med_band = maxpwr;
  cckpo = sprom->cck2gpo;
  if (cckpo) {
   ofdmpo = sprom->ofdm2gpo;
   for (i = 0; i < 4; i++) {
    lpphy->tx_max_rate[i] =
     maxpwr - (ofdmpo & 0xF) * 2;
    ofdmpo >>= 4;
   }
   ofdmpo = sprom->ofdm2gpo;
   for (i = 4; i < 15; i++) {
    lpphy->tx_max_rate[i] =
     maxpwr - (ofdmpo & 0xF) * 2;
    ofdmpo >>= 4;
   }
  } else {
   u8 opo = sprom->opo;
   for (i = 0; i < 4; i++)
    lpphy->tx_max_rate[i] = maxpwr;
   for (i = 4; i < 15; i++)
    lpphy->tx_max_rate[i] = maxpwr - opo;
  }
 } else {
  lpphy->tx_isolation_low_band = sprom->tri5gl;
  lpphy->tx_isolation_med_band = sprom->tri5g;
  lpphy->tx_isolation_hi_band = sprom->tri5gh;
  lpphy->bx_arch = sprom->bxa5g;
  lpphy->rx_pwr_offset = sprom->rxpo5g;
  lpphy->rssi_vf = sprom->rssismf5g;
  lpphy->rssi_vc = sprom->rssismc5g;
  lpphy->rssi_gs = sprom->rssisav5g;
  lpphy->txpa[0] = sprom->pa1b0;
  lpphy->txpa[1] = sprom->pa1b1;
  lpphy->txpa[2] = sprom->pa1b2;
  lpphy->txpal[0] = sprom->pa1lob0;
  lpphy->txpal[1] = sprom->pa1lob1;
  lpphy->txpal[2] = sprom->pa1lob2;
  lpphy->txpah[0] = sprom->pa1hib0;
  lpphy->txpah[1] = sprom->pa1hib1;
  lpphy->txpah[2] = sprom->pa1hib2;
  maxpwr = sprom->maxpwr_al;
  ofdmpo = sprom->ofdm5glpo;
  lpphy->max_tx_pwr_low_band = maxpwr;
  for (i = 4; i < 12; i++) {
   lpphy->tx_max_ratel[i] = maxpwr - (ofdmpo & 0xF) * 2;
   ofdmpo >>= 4;
  }
  maxpwr = sprom->maxpwr_a;
  ofdmpo = sprom->ofdm5gpo;
  lpphy->max_tx_pwr_med_band = maxpwr;
  for (i = 4; i < 12; i++) {
   lpphy->tx_max_rate[i] = maxpwr - (ofdmpo & 0xF) * 2;
   ofdmpo >>= 4;
  }
  maxpwr = sprom->maxpwr_ah;
  ofdmpo = sprom->ofdm5ghpo;
  lpphy->max_tx_pwr_hi_band = maxpwr;
  for (i = 4; i < 12; i++) {
   lpphy->tx_max_rateh[i] = maxpwr - (ofdmpo & 0xF) * 2;
   ofdmpo >>= 4;
  }
 }
}
