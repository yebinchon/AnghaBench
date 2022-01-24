#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct ieee80211_hdr {int /*<<< orphan*/  seq_ctrl; int /*<<< orphan*/  frame_control; } ;
struct TYPE_9__ {int rx_desc_count; } ;
struct TYPE_6__ {int /*<<< orphan*/  nwid; } ;
struct TYPE_7__ {TYPE_1__ discard; } ;
struct atmel_private {int rx_desc_head; TYPE_4__ host_info; TYPE_5__* dev; int /*<<< orphan*/ * rx_buf; void* do_rx_crc; int /*<<< orphan*/  frag_source; int /*<<< orphan*/  wep_is_on; scalar_t__ probe_crc; int /*<<< orphan*/  crc_ko_cnt; int /*<<< orphan*/  crc_ok_cnt; TYPE_2__ wstats; } ;
struct TYPE_8__ {int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_errors; } ;
struct TYPE_10__ {TYPE_3__ stats; } ;

/* Variables and functions */
 int IEEE80211_FCTL_FTYPE ; 
 int IEEE80211_FCTL_MOREFRAGS ; 
 int IEEE80211_FCTL_PROTECTED ; 
 int IEEE80211_FTYPE_DATA ; 
 int IEEE80211_FTYPE_MGMT ; 
 int IEEE80211_SCTL_FRAG ; 
 int IEEE80211_SCTL_SEQ ; 
 int /*<<< orphan*/  RX_DESC_FLAGS_OFFSET ; 
 int /*<<< orphan*/  RX_DESC_FLAG_CONSUMED ; 
 scalar_t__ RX_DESC_FLAG_VALID ; 
 int /*<<< orphan*/  RX_DESC_MSDU_POS_OFFSET ; 
 int /*<<< orphan*/  RX_DESC_MSDU_SIZE_OFFSET ; 
 int /*<<< orphan*/  RX_DESC_RSSI_OFFSET ; 
 int /*<<< orphan*/  RX_DESC_STATUS_OFFSET ; 
 int RX_STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct atmel_private*,struct ieee80211_hdr*,int,scalar_t__) ; 
 int FUNC2 (struct atmel_private*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct atmel_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct atmel_private*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct atmel_private*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct atmel_private*,struct ieee80211_hdr*,int,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct atmel_private*,struct ieee80211_hdr*,int,int,int,int,int,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int,int) ; 
 void* FUNC11 (struct atmel_private*,int,int) ; 

__attribute__((used)) static void FUNC12(struct atmel_private *priv)
{
	int i;
	struct ieee80211_hdr header;

	for (i = 0;
	     FUNC3(priv, FUNC4(priv, RX_DESC_FLAGS_OFFSET, priv->rx_desc_head)) == RX_DESC_FLAG_VALID &&
		     i < priv->host_info.rx_desc_count;
	     i++) {

		u16 msdu_size, rx_packet_loc, frame_ctl, seq_control;
		u8 status = FUNC3(priv, FUNC4(priv, RX_DESC_STATUS_OFFSET, priv->rx_desc_head));
		u32 crc = 0xffffffff;

		if (status != RX_STATUS_SUCCESS) {
			if (status == 0xc1) /* determined by experiment */
				priv->wstats.discard.nwid++;
			else
				priv->dev->stats.rx_errors++;
			goto next;
		}

		msdu_size = FUNC2(priv, FUNC4(priv, RX_DESC_MSDU_SIZE_OFFSET, priv->rx_desc_head));
		rx_packet_loc = FUNC2(priv, FUNC4(priv, RX_DESC_MSDU_POS_OFFSET, priv->rx_desc_head));

		if (msdu_size < 30) {
			priv->dev->stats.rx_errors++;
			goto next;
		}

		/* Get header as far as end of seq_ctrl */
		FUNC0(priv->dev, (char *)&header, rx_packet_loc, 24);
		frame_ctl = FUNC9(header.frame_control);
		seq_control = FUNC9(header.seq_ctrl);

		/* probe for CRC use here if needed  once five packets have
		   arrived with the same crc status, we assume we know what's
		   happening and stop probing */
		if (priv->probe_crc) {
			if (!priv->wep_is_on || !(frame_ctl & IEEE80211_FCTL_PROTECTED)) {
				priv->do_rx_crc = FUNC11(priv, rx_packet_loc, msdu_size);
			} else {
				priv->do_rx_crc = FUNC11(priv, rx_packet_loc + 24, msdu_size - 24);
			}
			if (priv->do_rx_crc) {
				if (priv->crc_ok_cnt++ > 5)
					priv->probe_crc = 0;
			} else {
				if (priv->crc_ko_cnt++ > 5)
					priv->probe_crc = 0;
			}
		}

		/* don't CRC header when WEP in use */
		if (priv->do_rx_crc && (!priv->wep_is_on || !(frame_ctl & IEEE80211_FCTL_PROTECTED))) {
			crc = FUNC6(0xffffffff, (unsigned char *)&header, 24);
		}
		msdu_size -= 24; /* header */

		if ((frame_ctl & IEEE80211_FCTL_FTYPE) == IEEE80211_FTYPE_DATA) {
			int more_fragments = frame_ctl & IEEE80211_FCTL_MOREFRAGS;
			u8 packet_fragment_no = seq_control & IEEE80211_SCTL_FRAG;
			u16 packet_sequence_no = (seq_control & IEEE80211_SCTL_SEQ) >> 4;

			if (!more_fragments && packet_fragment_no == 0) {
				FUNC7(priv, &header, msdu_size, rx_packet_loc, crc);
			} else {
				FUNC8(priv, &header, msdu_size, rx_packet_loc, crc,
					     packet_sequence_no, packet_fragment_no, more_fragments);
			}
		}

		if ((frame_ctl & IEEE80211_FCTL_FTYPE) == IEEE80211_FTYPE_MGMT) {
			/* copy rest of packet into buffer */
			FUNC0(priv->dev, (unsigned char *)&priv->rx_buf, rx_packet_loc + 24, msdu_size);

			/* we use the same buffer for frag reassembly and control packets */
			FUNC10(priv->frag_source, 0xff, 6);

			if (priv->do_rx_crc) {
				/* last 4 octets is crc */
				msdu_size -= 4;
				crc = FUNC6(crc, (unsigned char *)&priv->rx_buf, msdu_size);
				if ((crc ^ 0xffffffff) != (*((u32 *)&priv->rx_buf[msdu_size]))) {
					priv->dev->stats.rx_crc_errors++;
					goto next;
				}
			}

			FUNC1(priv, &header, msdu_size,
					       FUNC3(priv, FUNC4(priv, RX_DESC_RSSI_OFFSET, priv->rx_desc_head)));
		}

next:
		/* release descriptor */
		FUNC5(priv, FUNC4(priv, RX_DESC_FLAGS_OFFSET, priv->rx_desc_head), RX_DESC_FLAG_CONSUMED);

		if (priv->rx_desc_head < (priv->host_info.rx_desc_count - 1))
			priv->rx_desc_head++;
		else
			priv->rx_desc_head = 0;
	}
}