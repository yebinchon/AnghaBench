
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct b43legacy_wldev {int radio_hw_enable; } ;
struct b43legacy_phy {int savedpctlreg; int aci_enable; int aci_wlan_automatic; int aci_hw_rssi; int* nrssi; int* nrssi_lt; int lofcal; int initval; int channel; int interfmode; scalar_t__ nrssislope; scalar_t__ txpwr_offset; int txctl1; int rfatt; int bbatt; scalar_t__ trsw_rx_gain; scalar_t__ max_lb_gain; struct b43legacy_lopair* _lo_pairs; struct b43legacy_lopair* minlowsigpos; struct b43legacy_lopair* minlowsig; } ;
struct b43legacy_lopair {int dummy; } ;


 int ARRAY_SIZE (int*) ;
 int B43legacy_INTERFMODE_NONE ;
 int B43legacy_LO_COUNT ;
 int b43legacy_default_baseband_attenuation (struct b43legacy_wldev*) ;
 int b43legacy_default_radio_attenuation (struct b43legacy_wldev*) ;
 int b43legacy_default_txctl1 (struct b43legacy_wldev*) ;
 int memset (struct b43legacy_lopair*,int,int) ;

__attribute__((used)) static void setup_struct_phy_for_init(struct b43legacy_wldev *dev,
          struct b43legacy_phy *phy)
{
 struct b43legacy_lopair *lo;
 int i;

 memset(phy->minlowsig, 0xFF, sizeof(phy->minlowsig));
 memset(phy->minlowsigpos, 0, sizeof(phy->minlowsigpos));



 dev->radio_hw_enable = 1;

 phy->savedpctlreg = 0xFFFF;
 phy->aci_enable = 0;
 phy->aci_wlan_automatic = 0;
 phy->aci_hw_rssi = 0;

 lo = phy->_lo_pairs;
 if (lo)
  memset(lo, 0, sizeof(struct b43legacy_lopair) *
         B43legacy_LO_COUNT);
 phy->max_lb_gain = 0;
 phy->trsw_rx_gain = 0;


 phy->bbatt = b43legacy_default_baseband_attenuation(dev);
 phy->rfatt = b43legacy_default_radio_attenuation(dev);
 phy->txctl1 = b43legacy_default_txctl1(dev);
 phy->txpwr_offset = 0;


 phy->nrssislope = 0;
 for (i = 0; i < ARRAY_SIZE(phy->nrssi); i++)
  phy->nrssi[i] = -1000;
 for (i = 0; i < ARRAY_SIZE(phy->nrssi_lt); i++)
  phy->nrssi_lt[i] = i;

 phy->lofcal = 0xFFFF;
 phy->initval = 0xFFFF;

 phy->interfmode = B43legacy_INTERFMODE_NONE;
 phy->channel = 0xFF;
}
