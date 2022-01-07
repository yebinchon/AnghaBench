
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u64 ;
typedef int u16 ;
struct il_rxon_time_cmd {int dummy; } ;
struct TYPE_9__ {int dtim_period; void* atim_win; int beacon_init_val; void* beacon_interval; void* listen_interval; int timestamp; } ;
struct TYPE_7__ {int max_beacon_itrvl; } ;
struct il_priv {TYPE_4__ timing; int timestamp; TYPE_2__ hw_params; int mutex; TYPE_1__* hw; struct ieee80211_vif* vif; } ;
struct TYPE_8__ {int beacon_int; scalar_t__ dtim_period; } ;
struct ieee80211_vif {TYPE_3__ bss_conf; } ;
struct ieee80211_conf {int listen_interval; } ;
typedef int s32 ;
struct TYPE_6__ {struct ieee80211_conf conf; } ;


 int C_RXON_TIMING ;
 int D_ASSOC (char*,int ,int ,int ) ;
 int TIME_UNIT ;
 void* cpu_to_le16 (int) ;
 int cpu_to_le32 (int) ;
 int cpu_to_le64 (int ) ;
 int do_div (int ,int) ;
 int il_adjust_beacon_interval (int,int) ;
 int il_send_cmd_pdu (struct il_priv*,int ,int,TYPE_4__*) ;
 int le16_to_cpu (void*) ;
 int le32_to_cpu (int ) ;
 int lockdep_assert_held (int *) ;
 int memset (TYPE_4__*,int ,int) ;

int
il_send_rxon_timing(struct il_priv *il)
{
 u64 tsf;
 s32 interval_tm, rem;
 struct ieee80211_conf *conf = ((void*)0);
 u16 beacon_int;
 struct ieee80211_vif *vif = il->vif;

 conf = &il->hw->conf;

 lockdep_assert_held(&il->mutex);

 memset(&il->timing, 0, sizeof(struct il_rxon_time_cmd));

 il->timing.timestamp = cpu_to_le64(il->timestamp);
 il->timing.listen_interval = cpu_to_le16(conf->listen_interval);

 beacon_int = vif ? vif->bss_conf.beacon_int : 0;





 il->timing.atim_win = 0;

 beacon_int =
     il_adjust_beacon_interval(beacon_int,
          il->hw_params.max_beacon_itrvl *
          TIME_UNIT);
 il->timing.beacon_interval = cpu_to_le16(beacon_int);

 tsf = il->timestamp;
 interval_tm = beacon_int * TIME_UNIT;
 rem = do_div(tsf, interval_tm);
 il->timing.beacon_init_val = cpu_to_le32(interval_tm - rem);

 il->timing.dtim_period = vif ? (vif->bss_conf.dtim_period ? : 1) : 1;

 D_ASSOC("beacon interval %d beacon timer %d beacon tim %d\n",
  le16_to_cpu(il->timing.beacon_interval),
  le32_to_cpu(il->timing.beacon_init_val),
  le16_to_cpu(il->timing.atim_win));

 return il_send_cmd_pdu(il, C_RXON_TIMING, sizeof(il->timing),
          &il->timing);
}
