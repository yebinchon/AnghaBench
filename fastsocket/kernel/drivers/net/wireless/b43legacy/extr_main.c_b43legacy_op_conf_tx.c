
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u16 ;
struct ieee80211_vif {int dummy; } ;
struct ieee80211_tx_queue_params {int dummy; } ;
struct ieee80211_hw {int dummy; } ;



__attribute__((used)) static int b43legacy_op_conf_tx(struct ieee80211_hw *hw,
    struct ieee80211_vif *vif, u16 queue,
    const struct ieee80211_tx_queue_params *params)
{
 return 0;
}
