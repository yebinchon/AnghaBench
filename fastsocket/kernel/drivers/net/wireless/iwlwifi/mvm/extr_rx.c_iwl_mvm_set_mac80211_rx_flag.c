
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct iwl_mvm {int dummy; } ;
struct ieee80211_rx_status {int flag; } ;
struct ieee80211_hdr {int frame_control; } ;


 int IWL_DEBUG_WEP (struct iwl_mvm*,char*) ;
 int IWL_ERR (struct iwl_mvm*,char*,int) ;
 int RX_FLAG_DECRYPTED ;
 int RX_MPDU_RES_STATUS_ICV_OK ;
 int RX_MPDU_RES_STATUS_MIC_OK ;

 int RX_MPDU_RES_STATUS_SEC_ENC_ERR ;
 int RX_MPDU_RES_STATUS_SEC_ENC_MSK ;
 int RX_MPDU_RES_STATUS_SEC_NO_ENC ;


 int RX_MPDU_RES_STATUS_TTAK_OK ;
 int ieee80211_has_protected (int ) ;

__attribute__((used)) static u32 iwl_mvm_set_mac80211_rx_flag(struct iwl_mvm *mvm,
     struct ieee80211_hdr *hdr,
     struct ieee80211_rx_status *stats,
     u32 rx_pkt_status)
{
 if (!ieee80211_has_protected(hdr->frame_control) ||
     (rx_pkt_status & RX_MPDU_RES_STATUS_SEC_ENC_MSK) ==
        RX_MPDU_RES_STATUS_SEC_NO_ENC)
  return 0;


 if ((rx_pkt_status & RX_MPDU_RES_STATUS_SEC_ENC_MSK) ==
     RX_MPDU_RES_STATUS_SEC_ENC_ERR)
  return 0;

 switch (rx_pkt_status & RX_MPDU_RES_STATUS_SEC_ENC_MSK) {
 case 130:

  if (!(rx_pkt_status & RX_MPDU_RES_STATUS_MIC_OK))
   return -1;

  stats->flag |= RX_FLAG_DECRYPTED;
  IWL_DEBUG_WEP(mvm, "hw decrypted CCMP successfully\n");
  return 0;

 case 129:

  if (!(rx_pkt_status & RX_MPDU_RES_STATUS_TTAK_OK))
   return 0;


 case 128:
  if (!(rx_pkt_status & RX_MPDU_RES_STATUS_ICV_OK))
   return -1;

  stats->flag |= RX_FLAG_DECRYPTED;
  return 0;

 default:
  IWL_ERR(mvm, "Unhandled alg: 0x%x\n", rx_pkt_status);
 }

 return 0;
}
