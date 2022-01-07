
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_regdomain {int dummy; } ;
struct ath_regulatory {TYPE_1__* regpair; } ;
struct TYPE_2__ {int regDmnEnum; } ;


 int WARN_ON (int) ;
 struct ieee80211_regdomain const* ath_default_world_regdomain () ;
 struct ieee80211_regdomain const ath_world_regdom_60_61_62 ;
 struct ieee80211_regdomain const ath_world_regdom_63_65 ;
 struct ieee80211_regdomain const ath_world_regdom_64 ;
 struct ieee80211_regdomain const ath_world_regdom_66_69 ;
 struct ieee80211_regdomain const ath_world_regdom_67_68_6A_6C ;

__attribute__((used)) static const struct
ieee80211_regdomain *ath_world_regdomain(struct ath_regulatory *reg)
{
 switch (reg->regpair->regDmnEnum) {
 case 0x60:
 case 0x61:
 case 0x62:
  return &ath_world_regdom_60_61_62;
 case 0x63:
 case 0x65:
  return &ath_world_regdom_63_65;
 case 0x64:
  return &ath_world_regdom_64;
 case 0x66:
 case 0x69:
  return &ath_world_regdom_66_69;
 case 0x67:
 case 0x68:
 case 0x6A:
 case 0x6C:
  return &ath_world_regdom_67_68_6A_6C;
 default:
  WARN_ON(1);
  return ath_default_world_regdomain();
 }
}
