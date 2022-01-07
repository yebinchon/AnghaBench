
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct error_table_start TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
struct sk_buff {int len; int * data; } ;
struct iwl_wowlan_status {int * wake_packet; scalar_t__ wake_packet_length; scalar_t__ wake_packet_bufsize; int pattern_number; scalar_t__ wakeup_reasons; } ;
struct iwl_mvm {int error_event_table; int gtk_ivlen; int ptk_ivlen; scalar_t__ ptk_icvlen; scalar_t__ gtk_icvlen; int trans; } ;
struct iwl_host_cmd {int flags; TYPE_1__* resp_pkt; int id; } ;
struct iwl_cmd_header {int dummy; } ;
struct ieee80211_vif {int type; int addr; } ;
struct ieee80211_hdr {int addr1; int frame_control; } ;
struct cfg80211_wowlan_wakeup {int pattern_idx; int rfkill_release; int magic_pkt; int disconnect; int gtk_rekey_failure; int eap_identity_req; int four_way_handshake; int tcp_connlost; int tcp_nomoretokens; int tcp_match; int packet_present_len; int packet_len; int packet_80211; int * packet; } ;
typedef int err_info ;
struct error_table_start {int valid; int error_id; } ;
struct TYPE_3__ {scalar_t__ data; scalar_t__ len_n_flags; } ;


 int ALIGN (int,int) ;
 int CMD_SYNC ;
 int CMD_WANT_SKB ;
 int FH_RSCSR_FRAME_SIZE_MSK ;
 int GFP_KERNEL ;
 int IWL_ERR (struct iwl_mvm*,char*,...) ;
 int IWL_INFO (struct iwl_mvm*,char*,int) ;
 int IWL_WOWLAN_WAKEUP_BY_DISCONNECTION_ON_DEAUTH ;
 int IWL_WOWLAN_WAKEUP_BY_DISCONNECTION_ON_MISSED_BEACON ;
 int IWL_WOWLAN_WAKEUP_BY_EAPOL_REQUEST ;
 int IWL_WOWLAN_WAKEUP_BY_FOUR_WAY_HANDSHAKE ;
 int IWL_WOWLAN_WAKEUP_BY_GTK_REKEY_FAILURE ;
 int IWL_WOWLAN_WAKEUP_BY_MAGIC_PACKET ;
 int IWL_WOWLAN_WAKEUP_BY_NON_WIRELESS ;
 int IWL_WOWLAN_WAKEUP_BY_PATTERN ;
 int IWL_WOWLAN_WAKEUP_BY_REM_WAKE_LINK_LOSS ;
 int IWL_WOWLAN_WAKEUP_BY_REM_WAKE_SIGNATURE_TABLE ;
 int IWL_WOWLAN_WAKEUP_BY_REM_WAKE_WAKEUP_PACKET ;
 int IWL_WOWLAN_WAKEUP_BY_RFKILL_DEASSERTED ;
 int OFFLOADS_QUERY_CMD ;
 scalar_t__ RF_KILL_INDICATOR_FOR_WOWLAN ;
 scalar_t__ WARN_ON_ONCE (int) ;
 int WOWLAN_GET_STATUSES ;
 struct sk_buff* alloc_skb (int,int ) ;
 scalar_t__ ieee80211_data_to_8023 (struct sk_buff*,int ,int ) ;
 scalar_t__ ieee80211_has_protected (int ) ;
 int ieee80211_hdrlen (int ) ;
 scalar_t__ ieee80211_is_data (int ) ;
 int ieee80211_report_wowlan_wakeup (struct ieee80211_vif*,struct cfg80211_wowlan_wakeup*,int ) ;
 scalar_t__ is_multicast_ether_addr (int ) ;
 int iwl_free_resp (struct iwl_host_cmd*) ;
 int iwl_mvm_send_cmd (struct iwl_mvm*,struct iwl_host_cmd*) ;
 int iwl_mvm_send_cmd_pdu (struct iwl_mvm*,int ,int,int ,int *) ;
 int iwl_trans_read_mem_bytes (int ,int,TYPE_2__*,int) ;
 int kfree_skb (struct sk_buff*) ;
 int le16_to_cpu (int ) ;
 int le32_to_cpu (scalar_t__) ;
 int memcpy (int ,int const*,int) ;
 int skb_put (struct sk_buff*,int) ;

__attribute__((used)) static void iwl_mvm_query_wakeup_reasons(struct iwl_mvm *mvm,
      struct ieee80211_vif *vif)
{
 u32 base = mvm->error_event_table;
 struct error_table_start {

  u32 valid;
  u32 error_id;
 } err_info;
 struct cfg80211_wowlan_wakeup wakeup = {
  .pattern_idx = -1,
 };
 struct cfg80211_wowlan_wakeup *wakeup_report = &wakeup;
 struct iwl_host_cmd cmd = {
  .id = WOWLAN_GET_STATUSES,
  .flags = CMD_SYNC | CMD_WANT_SKB,
 };
 struct iwl_wowlan_status *status;
 u32 reasons;
 int ret, len;
 struct sk_buff *pkt = ((void*)0);

 iwl_trans_read_mem_bytes(mvm->trans, base,
     &err_info, sizeof(err_info));

 if (err_info.valid) {
  IWL_INFO(mvm, "error table is valid (%d)\n",
    err_info.valid);
  if (err_info.error_id == RF_KILL_INDICATOR_FOR_WOWLAN) {
   wakeup.rfkill_release = 1;
   ieee80211_report_wowlan_wakeup(vif, &wakeup,
             GFP_KERNEL);
  }
  return;
 }


 ret = iwl_mvm_send_cmd_pdu(mvm, OFFLOADS_QUERY_CMD, CMD_SYNC, 0, ((void*)0));
 if (ret)
  IWL_ERR(mvm, "failed to query offload statistics (%d)\n", ret);

 ret = iwl_mvm_send_cmd(mvm, &cmd);
 if (ret) {
  IWL_ERR(mvm, "failed to query status (%d)\n", ret);
  return;
 }


 if (!cmd.resp_pkt)
  return;

 len = le32_to_cpu(cmd.resp_pkt->len_n_flags) & FH_RSCSR_FRAME_SIZE_MSK;
 if (len - sizeof(struct iwl_cmd_header) < sizeof(*status)) {
  IWL_ERR(mvm, "Invalid WoWLAN status response!\n");
  goto out;
 }

 status = (void *)cmd.resp_pkt->data;

 if (len - sizeof(struct iwl_cmd_header) !=
     sizeof(*status) +
     ALIGN(le32_to_cpu(status->wake_packet_bufsize), 4)) {
  IWL_ERR(mvm, "Invalid WoWLAN status response!\n");
  goto out;
 }

 reasons = le32_to_cpu(status->wakeup_reasons);

 if (reasons == IWL_WOWLAN_WAKEUP_BY_NON_WIRELESS) {
  wakeup_report = ((void*)0);
  goto report;
 }

 if (reasons & IWL_WOWLAN_WAKEUP_BY_MAGIC_PACKET)
  wakeup.magic_pkt = 1;

 if (reasons & IWL_WOWLAN_WAKEUP_BY_PATTERN)
  wakeup.pattern_idx =
   le16_to_cpu(status->pattern_number);

 if (reasons & (IWL_WOWLAN_WAKEUP_BY_DISCONNECTION_ON_MISSED_BEACON |
         IWL_WOWLAN_WAKEUP_BY_DISCONNECTION_ON_DEAUTH))
  wakeup.disconnect = 1;

 if (reasons & IWL_WOWLAN_WAKEUP_BY_GTK_REKEY_FAILURE)
  wakeup.gtk_rekey_failure = 1;

 if (reasons & IWL_WOWLAN_WAKEUP_BY_RFKILL_DEASSERTED)
  wakeup.rfkill_release = 1;

 if (reasons & IWL_WOWLAN_WAKEUP_BY_EAPOL_REQUEST)
  wakeup.eap_identity_req = 1;

 if (reasons & IWL_WOWLAN_WAKEUP_BY_FOUR_WAY_HANDSHAKE)
  wakeup.four_way_handshake = 1;

 if (reasons & IWL_WOWLAN_WAKEUP_BY_REM_WAKE_LINK_LOSS)
  wakeup.tcp_connlost = 1;

 if (reasons & IWL_WOWLAN_WAKEUP_BY_REM_WAKE_SIGNATURE_TABLE)
  wakeup.tcp_nomoretokens = 1;

 if (reasons & IWL_WOWLAN_WAKEUP_BY_REM_WAKE_WAKEUP_PACKET)
  wakeup.tcp_match = 1;

 if (status->wake_packet_bufsize) {
  int pktsize = le32_to_cpu(status->wake_packet_bufsize);
  int pktlen = le32_to_cpu(status->wake_packet_length);
  const u8 *pktdata = status->wake_packet;
  struct ieee80211_hdr *hdr = (void *)pktdata;
  int truncated = pktlen - pktsize;


  if (WARN_ON_ONCE(truncated < 0))
   truncated = 0;

  if (ieee80211_is_data(hdr->frame_control)) {
   int hdrlen = ieee80211_hdrlen(hdr->frame_control);
   int ivlen = 0, icvlen = 4;

   pkt = alloc_skb(pktsize, GFP_KERNEL);
   if (!pkt)
    goto report;

   memcpy(skb_put(pkt, hdrlen), pktdata, hdrlen);
   pktdata += hdrlen;
   pktsize -= hdrlen;

   if (ieee80211_has_protected(hdr->frame_control)) {
    if (is_multicast_ether_addr(hdr->addr1)) {
     ivlen = mvm->gtk_ivlen;
     icvlen += mvm->gtk_icvlen;
    } else {
     ivlen = mvm->ptk_ivlen;
     icvlen += mvm->ptk_icvlen;
    }
   }


   if (truncated >= icvlen) {
    icvlen = 0;
    truncated -= icvlen;
   } else {
    icvlen -= truncated;
    truncated = 0;
   }

   pktsize -= ivlen + icvlen;
   pktdata += ivlen;

   memcpy(skb_put(pkt, pktsize), pktdata, pktsize);

   if (ieee80211_data_to_8023(pkt, vif->addr, vif->type))
    goto report;
   wakeup.packet = pkt->data;
   wakeup.packet_present_len = pkt->len;
   wakeup.packet_len = pkt->len - truncated;
   wakeup.packet_80211 = 0;
  } else {
   int fcslen = 4;

   if (truncated >= 4) {
    truncated -= 4;
    fcslen = 0;
   } else {
    fcslen -= truncated;
    truncated = 0;
   }
   pktsize -= fcslen;
   wakeup.packet = status->wake_packet;
   wakeup.packet_present_len = pktsize;
   wakeup.packet_len = pktlen - truncated;
   wakeup.packet_80211 = 1;
  }
 }

 report:
 ieee80211_report_wowlan_wakeup(vif, wakeup_report, GFP_KERNEL);
 kfree_skb(pkt);

 out:
 iwl_free_resp(&cmd);
}
