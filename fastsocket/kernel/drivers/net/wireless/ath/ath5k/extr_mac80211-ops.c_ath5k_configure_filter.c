
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
typedef int u32 ;
struct ieee80211_hw {struct ath5k_hw* priv; } ;
struct ath5k_vif_iter_data {int n_stas; int need_set_hw_addr; int * hw_macaddr; } ;
struct ath5k_hw {int nvifs; int opmode; int filter_flags; int lock; int hw; int assoc; int status; } ;


 int AR5K_RX_FILTER_BCAST ;
 int AR5K_RX_FILTER_BEACON ;
 int AR5K_RX_FILTER_CONTROL ;
 int AR5K_RX_FILTER_MCAST ;
 int AR5K_RX_FILTER_PHYERR ;
 int AR5K_RX_FILTER_PROBEREQ ;
 int AR5K_RX_FILTER_PROM ;
 int AR5K_RX_FILTER_UCAST ;
 int ATH_STAT_PROMISC ;
 unsigned int FIF_ALLMULTI ;
 unsigned int FIF_BCN_PRBRESP_PROMISC ;
 unsigned int FIF_CONTROL ;
 unsigned int FIF_FCSFAIL ;
 unsigned int FIF_OTHER_BSS ;
 unsigned int FIF_PLCPFAIL ;
 unsigned int FIF_PROMISC_IN_BSS ;
 int IEEE80211_IFACE_ITER_RESUME_ALL ;




 unsigned int SUPPORTED_FIF_FLAGS ;
 int __clear_bit (int ,int ) ;
 int __set_bit (int ,int ) ;
 int ath5k_hw_get_rx_filter (struct ath5k_hw*) ;
 int ath5k_hw_set_mcast_filter (struct ath5k_hw*,int,int) ;
 int ath5k_hw_set_rx_filter (struct ath5k_hw*,int) ;
 int ath5k_vif_iter ;
 int ieee80211_iterate_active_interfaces_atomic (int ,int ,int ,struct ath5k_vif_iter_data*) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 scalar_t__ test_bit (int ,int ) ;

__attribute__((used)) static void
ath5k_configure_filter(struct ieee80211_hw *hw, unsigned int changed_flags,
         unsigned int *new_flags, u64 multicast)
{





 struct ath5k_hw *ah = hw->priv;
 u32 mfilt[2], rfilt;
 struct ath5k_vif_iter_data iter_data;

 mutex_lock(&ah->lock);

 mfilt[0] = multicast;
 mfilt[1] = multicast >> 32;


 changed_flags &= (FIF_PROMISC_IN_BSS | FIF_ALLMULTI | FIF_FCSFAIL | FIF_PLCPFAIL | FIF_CONTROL | FIF_OTHER_BSS | FIF_BCN_PRBRESP_PROMISC);
 *new_flags &= (FIF_PROMISC_IN_BSS | FIF_ALLMULTI | FIF_FCSFAIL | FIF_PLCPFAIL | FIF_CONTROL | FIF_OTHER_BSS | FIF_BCN_PRBRESP_PROMISC);




 rfilt = (ath5k_hw_get_rx_filter(ah) & (AR5K_RX_FILTER_PHYERR)) |
  (AR5K_RX_FILTER_UCAST | AR5K_RX_FILTER_BCAST |
  AR5K_RX_FILTER_MCAST);

 if (changed_flags & (FIF_PROMISC_IN_BSS | FIF_OTHER_BSS)) {
  if (*new_flags & FIF_PROMISC_IN_BSS)
   __set_bit(ATH_STAT_PROMISC, ah->status);
  else
   __clear_bit(ATH_STAT_PROMISC, ah->status);
 }

 if (test_bit(ATH_STAT_PROMISC, ah->status))
  rfilt |= AR5K_RX_FILTER_PROM;


 if (*new_flags & FIF_ALLMULTI) {
  mfilt[0] = ~0;
  mfilt[1] = ~0;
 }


 if (*new_flags & (FIF_FCSFAIL | FIF_PLCPFAIL))
  rfilt |= AR5K_RX_FILTER_PHYERR;



 if ((*new_flags & FIF_BCN_PRBRESP_PROMISC) || (ah->nvifs > 1))
  rfilt |= AR5K_RX_FILTER_BEACON;






 if (*new_flags & FIF_CONTROL)
  rfilt |= AR5K_RX_FILTER_CONTROL;





 switch (ah->opmode) {
 case 129:
  rfilt |= AR5K_RX_FILTER_CONTROL |
    AR5K_RX_FILTER_BEACON |
    AR5K_RX_FILTER_PROBEREQ |
    AR5K_RX_FILTER_PROM;
  break;
 case 130:
 case 131:
  rfilt |= AR5K_RX_FILTER_PROBEREQ |
    AR5K_RX_FILTER_BEACON;
  break;
 case 128:
  if (ah->assoc)
   rfilt |= AR5K_RX_FILTER_BEACON;
 default:
  break;
 }

 iter_data.hw_macaddr = ((void*)0);
 iter_data.n_stas = 0;
 iter_data.need_set_hw_addr = 0;
 ieee80211_iterate_active_interfaces_atomic(
  ah->hw, IEEE80211_IFACE_ITER_RESUME_ALL,
  ath5k_vif_iter, &iter_data);


 if (iter_data.n_stas > 1) {




  rfilt |= AR5K_RX_FILTER_PROM;
 }


 ath5k_hw_set_rx_filter(ah, rfilt);


 ath5k_hw_set_mcast_filter(ah, mfilt[0], mfilt[1]);


 ah->filter_flags = rfilt;

 mutex_unlock(&ah->lock);
}
