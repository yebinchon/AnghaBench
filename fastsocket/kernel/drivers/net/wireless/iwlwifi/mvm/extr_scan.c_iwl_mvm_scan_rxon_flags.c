
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cfg80211_scan_request {TYPE_1__** channels; } ;
typedef int __le32 ;
struct TYPE_2__ {scalar_t__ band; } ;


 scalar_t__ IEEE80211_BAND_2GHZ ;
 int PHY_BAND_24 ;
 int PHY_BAND_5 ;
 int cpu_to_le32 (int ) ;

__attribute__((used)) static inline __le32
iwl_mvm_scan_rxon_flags(struct cfg80211_scan_request *req)
{
 if (req->channels[0]->band == IEEE80211_BAND_2GHZ)
  return cpu_to_le32(PHY_BAND_24);
 else
  return cpu_to_le32(PHY_BAND_5);
}
