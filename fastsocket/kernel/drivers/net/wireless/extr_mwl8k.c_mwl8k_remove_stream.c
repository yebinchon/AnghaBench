
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mwl8k_ampdu_stream {int tid; TYPE_1__* sta; } ;
struct ieee80211_hw {int wiphy; } ;
struct TYPE_2__ {int addr; } ;


 int memset (struct mwl8k_ampdu_stream*,int ,int) ;
 int wiphy_debug (int ,char*,int ,int ) ;

__attribute__((used)) static void
mwl8k_remove_stream(struct ieee80211_hw *hw, struct mwl8k_ampdu_stream *stream)
{
 wiphy_debug(hw->wiphy, "Remove stream for %pM %d\n", stream->sta->addr,
      stream->tid);
 memset(stream, 0, sizeof(*stream));
}
