
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
struct mwl8k_priv {struct mwl8k_ampdu_stream* ampdu; } ;
struct mwl8k_ampdu_stream {scalar_t__ state; int idx; int tid; struct ieee80211_sta* sta; } ;
struct ieee80211_sta {int addr; } ;
struct ieee80211_hw {int wiphy; struct mwl8k_priv* priv; } ;


 scalar_t__ AMPDU_NO_STREAM ;
 scalar_t__ AMPDU_STREAM_NEW ;
 int MWL8K_NUM_AMPDU_STREAMS ;
 int wiphy_debug (int ,char*,int ,int ) ;

__attribute__((used)) static struct mwl8k_ampdu_stream *
mwl8k_add_stream(struct ieee80211_hw *hw, struct ieee80211_sta *sta, u8 tid)
{
 struct mwl8k_ampdu_stream *stream;
 struct mwl8k_priv *priv = hw->priv;
 int i;

 for (i = 0; i < MWL8K_NUM_AMPDU_STREAMS; i++) {
  stream = &priv->ampdu[i];
  if (stream->state == AMPDU_NO_STREAM) {
   stream->sta = sta;
   stream->state = AMPDU_STREAM_NEW;
   stream->tid = tid;
   stream->idx = i;
   wiphy_debug(hw->wiphy, "Added a new stream for %pM %d",
        sta->addr, tid);
   return stream;
  }
 }
 return ((void*)0);
}
