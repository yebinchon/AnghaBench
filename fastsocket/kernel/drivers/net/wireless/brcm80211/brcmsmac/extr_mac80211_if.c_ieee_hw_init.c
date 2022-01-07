
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ieee80211_hw {int flags; int max_rates; int channel_change_time; char* rate_control_algorithm; scalar_t__ sta_data_size; TYPE_1__* wiphy; int queues; int extra_tx_headroom; } ;
struct TYPE_2__ {int interface_modes; } ;


 int BIT (int ) ;
 int IEEE80211_HW_AMPDU_AGGREGATION ;
 int IEEE80211_HW_REPORTS_TX_ACK_STATUS ;
 int IEEE80211_HW_SIGNAL_DBM ;
 int NL80211_IFTYPE_STATION ;
 int N_TX_QUEUES ;
 int brcms_c_get_header_len () ;
 int ieee_hw_rate_init (struct ieee80211_hw*) ;

__attribute__((used)) static int ieee_hw_init(struct ieee80211_hw *hw)
{
 hw->flags = IEEE80211_HW_SIGNAL_DBM

     | IEEE80211_HW_REPORTS_TX_ACK_STATUS
     | IEEE80211_HW_AMPDU_AGGREGATION;

 hw->extra_tx_headroom = brcms_c_get_header_len();
 hw->queues = N_TX_QUEUES;
 hw->max_rates = 2;


 hw->channel_change_time = 7 * 1000;
 hw->wiphy->interface_modes = BIT(NL80211_IFTYPE_STATION);

 hw->rate_control_algorithm = "minstrel_ht";

 hw->sta_data_size = 0;
 return ieee_hw_rate_init(hw);
}
