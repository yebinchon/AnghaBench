
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct ath_regulatory {scalar_t__ country_code; TYPE_1__* regpair; } ;
typedef enum ieee80211_band { ____Placeholder_ieee80211_band } ieee80211_band ;
struct TYPE_2__ {int reg_5ghz_ctl; int reg_2ghz_ctl; } ;


 scalar_t__ CTRY_DEFAULT ;


 int NO_CTL ;
 int SD_NO_CTL ;
 int ath_regd_get_eepromRD (struct ath_regulatory*) ;
 scalar_t__ is_wwr_sku (int ) ;

u32 ath_regd_get_band_ctl(struct ath_regulatory *reg,
     enum ieee80211_band band)
{
 if (!reg->regpair ||
     (reg->country_code == CTRY_DEFAULT &&
      is_wwr_sku(ath_regd_get_eepromRD(reg)))) {
  return SD_NO_CTL;
 }

 switch (band) {
 case 129:
  return reg->regpair->reg_2ghz_ctl;
 case 128:
  return reg->regpair->reg_5ghz_ctl;
 default:
  return NO_CTL;
 }
}
