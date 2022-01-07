
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timespec {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct e1000_hw {TYPE_1__ mac; } ;
struct igb_adapter {int flags; int cc; int tc; int ptp_caps; struct e1000_hw hw; } ;


 int E1000_IMS ;
 int E1000_IMS_TS ;
 int E1000_TIMINCA ;
 int E1000_TSAUXC ;
 int E1000_TSIM ;
 int E1000_TSIM_TXTS ;
 int IGB_FLAG_PTP ;
 int INCPERIOD_82576 ;
 int INCVALUE_82576 ;






 int igb_ptp_settime_i210 (int *,struct timespec*) ;
 int ktime_get_real () ;
 int ktime_to_ns (int ) ;
 struct timespec ktime_to_timespec (int ) ;
 int timecounter_init (int *,int *,int ) ;
 int wr32 (int ,int) ;

void igb_ptp_reset(struct igb_adapter *adapter)
{
 struct e1000_hw *hw = &adapter->hw;

 if (!(adapter->flags & IGB_FLAG_PTP))
  return;

 switch (adapter->hw.mac.type) {
 case 133:

  wr32(E1000_TIMINCA, INCPERIOD_82576 | INCVALUE_82576);
  break;
 case 132:
 case 128:
 case 129:
 case 131:
 case 130:

  wr32(E1000_TSAUXC, 0x0);
  wr32(E1000_TSIM, E1000_TSIM_TXTS);
  wr32(E1000_IMS, E1000_IMS_TS);
  break;
 default:

  return;
 }


 if ((hw->mac.type == 131) || (hw->mac.type == 130)) {
  struct timespec ts = ktime_to_timespec(ktime_get_real());

  igb_ptp_settime_i210(&adapter->ptp_caps, &ts);
 } else {
  timecounter_init(&adapter->tc, &adapter->cc,
     ktime_to_ns(ktime_get_real()));
 }
}
