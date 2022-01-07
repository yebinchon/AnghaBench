
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct rt2x00_rate {int flags; int bitrate; } ;
struct ieee80211_rate {int flags; int hw_value_short; int hw_value; int bitrate; } ;


 int DEV_RATE_SHORT_PREAMBLE ;
 int IEEE80211_RATE_SHORT_PREAMBLE ;

__attribute__((used)) static void rt2x00lib_rate(struct ieee80211_rate *entry,
      const u16 index, const struct rt2x00_rate *rate)
{
 entry->flags = 0;
 entry->bitrate = rate->bitrate;
 entry->hw_value = index;
 entry->hw_value_short = index;

 if (rate->flags & DEV_RATE_SHORT_PREAMBLE)
  entry->flags |= IEEE80211_RATE_SHORT_PREAMBLE;
}
