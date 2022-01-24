#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct error_table_start   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
struct sk_buff {int len; int /*<<< orphan*/ * data; } ;
struct iwl_wowlan_status {int /*<<< orphan*/ * wake_packet; scalar_t__ wake_packet_length; scalar_t__ wake_packet_bufsize; int /*<<< orphan*/  pattern_number; scalar_t__ wakeup_reasons; } ;
struct iwl_mvm {int error_event_table; int gtk_ivlen; int ptk_ivlen; scalar_t__ ptk_icvlen; scalar_t__ gtk_icvlen; int /*<<< orphan*/  trans; } ;
struct iwl_host_cmd {int flags; TYPE_1__* resp_pkt; int /*<<< orphan*/  id; } ;
struct iwl_cmd_header {int dummy; } ;
struct ieee80211_vif {int /*<<< orphan*/  type; int /*<<< orphan*/  addr; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr1; int /*<<< orphan*/  frame_control; } ;
struct cfg80211_wowlan_wakeup {int pattern_idx; int rfkill_release; int magic_pkt; int disconnect; int gtk_rekey_failure; int eap_identity_req; int four_way_handshake; int tcp_connlost; int tcp_nomoretokens; int tcp_match; int packet_present_len; int packet_len; int packet_80211; int /*<<< orphan*/ * packet; } ;
typedef  int /*<<< orphan*/  err_info ;
struct error_table_start {int valid; int error_id; } ;
struct TYPE_3__ {scalar_t__ data; scalar_t__ len_n_flags; } ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int CMD_SYNC ; 
 int CMD_WANT_SKB ; 
 int FH_RSCSR_FRAME_SIZE_MSK ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_mvm*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct iwl_mvm*,char*,int) ; 
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
 int /*<<< orphan*/  OFFLOADS_QUERY_CMD ; 
 scalar_t__ RF_KILL_INDICATOR_FOR_WOWLAN ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  WOWLAN_GET_STATUSES ; 
 struct sk_buff* FUNC4 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct sk_buff*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_vif*,struct cfg80211_wowlan_wakeup*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct iwl_host_cmd*) ; 
 int FUNC12 (struct iwl_mvm*,struct iwl_host_cmd*) ; 
 int FUNC13 (struct iwl_mvm*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC15 (struct sk_buff*) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC20(struct iwl_mvm *mvm,
					 struct ieee80211_vif *vif)
{
	u32 base = mvm->error_event_table;
	struct error_table_start {
		/* cf. struct iwl_error_event_table */
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
	struct sk_buff *pkt = NULL;

	FUNC14(mvm->trans, base,
				 &err_info, sizeof(err_info));

	if (err_info.valid) {
		FUNC2(mvm, "error table is valid (%d)\n",
			 err_info.valid);
		if (err_info.error_id == RF_KILL_INDICATOR_FOR_WOWLAN) {
			wakeup.rfkill_release = true;
			FUNC9(vif, &wakeup,
						       GFP_KERNEL);
		}
		return;
	}

	/* only for tracing for now */
	ret = FUNC13(mvm, OFFLOADS_QUERY_CMD, CMD_SYNC, 0, NULL);
	if (ret)
		FUNC1(mvm, "failed to query offload statistics (%d)\n", ret);

	ret = FUNC12(mvm, &cmd);
	if (ret) {
		FUNC1(mvm, "failed to query status (%d)\n", ret);
		return;
	}

	/* RF-kill already asserted again... */
	if (!cmd.resp_pkt)
		return;

	len = FUNC17(cmd.resp_pkt->len_n_flags) & FH_RSCSR_FRAME_SIZE_MSK;
	if (len - sizeof(struct iwl_cmd_header) < sizeof(*status)) {
		FUNC1(mvm, "Invalid WoWLAN status response!\n");
		goto out;
	}

	status = (void *)cmd.resp_pkt->data;

	if (len - sizeof(struct iwl_cmd_header) !=
	    sizeof(*status) +
	    FUNC0(FUNC17(status->wake_packet_bufsize), 4)) {
		FUNC1(mvm, "Invalid WoWLAN status response!\n");
		goto out;
	}

	reasons = FUNC17(status->wakeup_reasons);

	if (reasons == IWL_WOWLAN_WAKEUP_BY_NON_WIRELESS) {
		wakeup_report = NULL;
		goto report;
	}

	if (reasons & IWL_WOWLAN_WAKEUP_BY_MAGIC_PACKET)
		wakeup.magic_pkt = true;

	if (reasons & IWL_WOWLAN_WAKEUP_BY_PATTERN)
		wakeup.pattern_idx =
			FUNC16(status->pattern_number);

	if (reasons & (IWL_WOWLAN_WAKEUP_BY_DISCONNECTION_ON_MISSED_BEACON |
		       IWL_WOWLAN_WAKEUP_BY_DISCONNECTION_ON_DEAUTH))
		wakeup.disconnect = true;

	if (reasons & IWL_WOWLAN_WAKEUP_BY_GTK_REKEY_FAILURE)
		wakeup.gtk_rekey_failure = true;

	if (reasons & IWL_WOWLAN_WAKEUP_BY_RFKILL_DEASSERTED)
		wakeup.rfkill_release = true;

	if (reasons & IWL_WOWLAN_WAKEUP_BY_EAPOL_REQUEST)
		wakeup.eap_identity_req = true;

	if (reasons & IWL_WOWLAN_WAKEUP_BY_FOUR_WAY_HANDSHAKE)
		wakeup.four_way_handshake = true;

	if (reasons & IWL_WOWLAN_WAKEUP_BY_REM_WAKE_LINK_LOSS)
		wakeup.tcp_connlost = true;

	if (reasons & IWL_WOWLAN_WAKEUP_BY_REM_WAKE_SIGNATURE_TABLE)
		wakeup.tcp_nomoretokens = true;

	if (reasons & IWL_WOWLAN_WAKEUP_BY_REM_WAKE_WAKEUP_PACKET)
		wakeup.tcp_match = true;

	if (status->wake_packet_bufsize) {
		int pktsize = FUNC17(status->wake_packet_bufsize);
		int pktlen = FUNC17(status->wake_packet_length);
		const u8 *pktdata = status->wake_packet;
		struct ieee80211_hdr *hdr = (void *)pktdata;
		int truncated = pktlen - pktsize;

		/* this would be a firmware bug */
		if (FUNC3(truncated < 0))
			truncated = 0;

		if (FUNC8(hdr->frame_control)) {
			int hdrlen = FUNC7(hdr->frame_control);
			int ivlen = 0, icvlen = 4; /* also FCS */

			pkt = FUNC4(pktsize, GFP_KERNEL);
			if (!pkt)
				goto report;

			FUNC18(FUNC19(pkt, hdrlen), pktdata, hdrlen);
			pktdata += hdrlen;
			pktsize -= hdrlen;

			if (FUNC6(hdr->frame_control)) {
				if (FUNC10(hdr->addr1)) {
					ivlen = mvm->gtk_ivlen;
					icvlen += mvm->gtk_icvlen;
				} else {
					ivlen = mvm->ptk_ivlen;
					icvlen += mvm->ptk_icvlen;
				}
			}

			/* if truncated, FCS/ICV is (partially) gone */
			if (truncated >= icvlen) {
				icvlen = 0;
				truncated -= icvlen;
			} else {
				icvlen -= truncated;
				truncated = 0;
			}

			pktsize -= ivlen + icvlen;
			pktdata += ivlen;

			FUNC18(FUNC19(pkt, pktsize), pktdata, pktsize);

			if (FUNC5(pkt, vif->addr, vif->type))
				goto report;
			wakeup.packet = pkt->data;
			wakeup.packet_present_len = pkt->len;
			wakeup.packet_len = pkt->len - truncated;
			wakeup.packet_80211 = false;
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
			wakeup.packet_80211 = true;
		}
	}

 report:
	FUNC9(vif, wakeup_report, GFP_KERNEL);
	FUNC15(pkt);

 out:
	FUNC11(&cmd);
}