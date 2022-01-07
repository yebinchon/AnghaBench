
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
struct tx_iter_data {int receive; int channel; } ;
struct ieee80211_vif {int chanctx_conf; } ;
struct TYPE_3__ {int chan; } ;
struct TYPE_4__ {TYPE_1__ def; } ;


 int hwsim_chans_compat (int ,int ) ;
 TYPE_2__* rcu_dereference (int ) ;

__attribute__((used)) static void mac80211_hwsim_tx_iter(void *_data, u8 *addr,
       struct ieee80211_vif *vif)
{
 struct tx_iter_data *data = _data;

 if (!vif->chanctx_conf)
  return;

 if (!hwsim_chans_compat(data->channel,
    rcu_dereference(vif->chanctx_conf)->def.chan))
  return;

 data->receive = 1;
}
