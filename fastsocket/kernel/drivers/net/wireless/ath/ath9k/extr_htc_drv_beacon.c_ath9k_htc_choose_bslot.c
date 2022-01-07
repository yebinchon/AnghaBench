
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
typedef int u16 ;
struct wmi_event_swba {int tsf; } ;
struct ath_common {int dummy; } ;
struct TYPE_2__ {int beacon_interval; } ;
struct ath9k_htc_priv {TYPE_1__ cur_beacon_conf; int ah; } ;


 int ATH9K_HTC_MAX_BCN_VIF ;
 int BEACON ;
 int TSF_TO_TU (int,int) ;
 struct ath_common* ath9k_hw_common (int ) ;
 int ath_dbg (struct ath_common*,int ,char*,int,int,int,int) ;
 int be64_to_cpu (int ) ;

__attribute__((used)) static int ath9k_htc_choose_bslot(struct ath9k_htc_priv *priv,
      struct wmi_event_swba *swba)
{
 struct ath_common *common = ath9k_hw_common(priv->ah);
 u64 tsf;
 u32 tsftu;
 u16 intval;
 int slot;

 intval = priv->cur_beacon_conf.beacon_interval;

 tsf = be64_to_cpu(swba->tsf);
 tsftu = TSF_TO_TU(tsf >> 32, tsf);
 slot = ((tsftu % intval) * ATH9K_HTC_MAX_BCN_VIF) / intval;
 slot = ATH9K_HTC_MAX_BCN_VIF - slot - 1;

 ath_dbg(common, BEACON,
  "Choose slot: %d, tsf: %llu, tsftu: %u, intval: %u\n",
  slot, tsf, tsftu, intval);

 return slot;
}
