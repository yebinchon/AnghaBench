
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iwl_rxon_context {int bcast_sta_id; } ;
struct ieee80211_sta {int dummy; } ;


 int IWL_INVALID_STATION ;
 int WARN_ON (int) ;
 int iwl_sta_id (struct ieee80211_sta*) ;

__attribute__((used)) static int iwl_sta_id_or_broadcast(struct iwl_rxon_context *context,
       struct ieee80211_sta *sta)
{
 int sta_id;

 if (!sta)
  return context->bcast_sta_id;

 sta_id = iwl_sta_id(sta);





 WARN_ON(sta_id == IWL_INVALID_STATION);

 return sta_id;
}
