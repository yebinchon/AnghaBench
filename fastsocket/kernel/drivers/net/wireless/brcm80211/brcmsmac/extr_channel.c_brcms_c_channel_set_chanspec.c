
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct txpwr_limits {int dummy; } ;
struct ieee80211_reg_rule {int flags; } ;
struct ieee80211_channel {int flags; int center_freq; } ;
struct brcms_cm_info {struct brcms_c_info* wlc; } ;
struct brcms_c_info {int hw; TYPE_5__* protection; int wiphy; TYPE_4__* pub; } ;
struct TYPE_10__ {int gmode_user; } ;
struct TYPE_9__ {TYPE_3__* ieee_hw; } ;
struct TYPE_6__ {struct ieee80211_channel* chan; } ;
struct TYPE_7__ {TYPE_1__ chandef; } ;
struct TYPE_8__ {TYPE_2__ conf; } ;


 int GMODE_LEGACY_B ;
 int IEEE80211_CHAN_PASSIVE_SCAN ;
 int IS_ERR (struct ieee80211_reg_rule const*) ;
 int NL80211_RRF_NO_OFDM ;
 int brcms_b_set_chanspec (int ,int ,int,struct txpwr_limits*) ;
 int brcms_c_channel_min_txpower_limits_with_local_constraint (struct brcms_cm_info*,struct txpwr_limits*,int ) ;
 int brcms_c_channel_reg_limits (struct brcms_cm_info*,int ,struct txpwr_limits*) ;
 int brcms_c_set_gmode (struct brcms_c_info*,int ,int) ;
 struct ieee80211_reg_rule* freq_reg_info (int ,int ) ;

void
brcms_c_channel_set_chanspec(struct brcms_cm_info *wlc_cm, u16 chanspec,
    u8 local_constraint_qdbm)
{
 struct brcms_c_info *wlc = wlc_cm->wlc;
 struct ieee80211_channel *ch = wlc->pub->ieee_hw->conf.chandef.chan;
 const struct ieee80211_reg_rule *reg_rule;
 struct txpwr_limits txpwr;

 brcms_c_channel_reg_limits(wlc_cm, chanspec, &txpwr);

 brcms_c_channel_min_txpower_limits_with_local_constraint(
  wlc_cm, &txpwr, local_constraint_qdbm
 );


 reg_rule = freq_reg_info(wlc->wiphy, ch->center_freq);
 if (!IS_ERR(reg_rule) && (reg_rule->flags & NL80211_RRF_NO_OFDM))
  brcms_c_set_gmode(wlc, GMODE_LEGACY_B, 0);
 else
  brcms_c_set_gmode(wlc, wlc->protection->gmode_user, 0);

 brcms_b_set_chanspec(wlc->hw, chanspec,
         !!(ch->flags & IEEE80211_CHAN_PASSIVE_SCAN),
         &txpwr);
}
