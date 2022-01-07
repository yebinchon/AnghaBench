
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct ieee80211_conf {int dummy; } ;
struct TYPE_5__ {int cwm_ignore_extcca; } ;
struct ath_hw {TYPE_2__ config; } ;
struct TYPE_6__ {TYPE_1__* hw; } ;
struct TYPE_4__ {struct ieee80211_conf conf; } ;


 scalar_t__ AR_2040_JOINED_RX_CLEAR ;
 int AR_2040_MODE ;
 int REG_WRITE (struct ath_hw*,int ,scalar_t__) ;
 TYPE_3__* ath9k_hw_common (struct ath_hw*) ;
 scalar_t__ conf_is_ht40 (struct ieee80211_conf*) ;

void ath9k_hw_set11nmac2040(struct ath_hw *ah)
{
 struct ieee80211_conf *conf = &ath9k_hw_common(ah)->hw->conf;
 u32 macmode;

 if (conf_is_ht40(conf) && !ah->config.cwm_ignore_extcca)
  macmode = AR_2040_JOINED_RX_CLEAR;
 else
  macmode = 0;

 REG_WRITE(ah, AR_2040_MODE, macmode);
}
