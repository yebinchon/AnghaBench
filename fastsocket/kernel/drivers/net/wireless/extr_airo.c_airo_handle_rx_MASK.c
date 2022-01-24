#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_8__ ;
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  v ;
typedef  int u16 ;
struct sk_buff {int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  protocol; int /*<<< orphan*/ * dev; int /*<<< orphan*/  pkt_type; } ;
struct rx_hdr {size_t* rssi; scalar_t__ len; scalar_t__ status; } ;
struct iw_quality {size_t qual; int level; int updated; int /*<<< orphan*/  noise; } ;
struct TYPE_15__ {int /*<<< orphan*/  noise; } ;
struct TYPE_16__ {TYPE_5__ qual; } ;
struct TYPE_13__ {scalar_t__ spy_number; } ;
struct TYPE_12__ {scalar_t__ enabled; } ;
struct airo_info {TYPE_8__* dev; int /*<<< orphan*/ * wifidev; int /*<<< orphan*/  flags; TYPE_6__ wstats; TYPE_4__* rssi; TYPE_3__ spy_data; TYPE_2__ micstats; } ;
typedef  int /*<<< orphan*/  micbuf ;
typedef  int /*<<< orphan*/  hdr ;
typedef  int /*<<< orphan*/  fc ;
typedef  int /*<<< orphan*/  etherHead ;
typedef  scalar_t__ __le16 ;
struct TYPE_11__ {int /*<<< orphan*/  rx_dropped; } ;
struct TYPE_18__ {int /*<<< orphan*/  name; TYPE_1__ stats; } ;
struct TYPE_17__ {int /*<<< orphan*/  typelen; } ;
struct TYPE_14__ {int rssidBm; } ;
typedef  TYPE_7__ MICBuffer ;

/* Variables and functions */
 int AIRO_DEF_MTU ; 
 int /*<<< orphan*/  BAP0 ; 
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int ETH_ALEN ; 
 int /*<<< orphan*/  ETH_P_802_2 ; 
 int /*<<< orphan*/  EVACK ; 
 int /*<<< orphan*/  EV_RX ; 
 int /*<<< orphan*/  FLAG_802_11 ; 
 int /*<<< orphan*/  FLAG_MPI ; 
 int FUNC0 (struct airo_info*,int /*<<< orphan*/ ) ; 
 int IW_QUAL_DBM ; 
 int IW_QUAL_LEVEL_UPDATED ; 
 int IW_QUAL_QUAL_UPDATED ; 
 int /*<<< orphan*/  FUNC1 (struct airo_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PACKET_OTHERHOST ; 
 int /*<<< orphan*/  RXFID ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct airo_info*,scalar_t__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct airo_info*,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct airo_info*,TYPE_7__*,int /*<<< orphan*/ *,int) ; 
 struct sk_buff* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,TYPE_8__*) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (struct airo_info*) ; 
 int /*<<< orphan*/  FUNC13 (struct airo_info*) ; 
 int /*<<< orphan*/  FUNC14 (struct sk_buff*) ; 
 int FUNC15 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC19 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (TYPE_8__*,char*,struct iw_quality*) ; 

__attribute__((used)) static void FUNC22(struct airo_info *ai)
{
	struct sk_buff *skb = NULL;
	__le16 fc, v, *buffer, tmpbuf[4];
	u16 len, hdrlen = 0, gap, fid;
	struct rx_hdr hdr;
	int success = 0;

	if (FUNC20(FLAG_MPI, &ai->flags)) {
		if (FUNC20(FLAG_802_11, &ai->flags))
			FUNC12(ai);
		else
			FUNC13(ai);
		FUNC1(ai, EVACK, EV_RX);
		return;
	}

	fid = FUNC0(ai, RXFID);

	/* Get the packet length */
	if (FUNC20(FLAG_802_11, &ai->flags)) {
		FUNC4 (ai, fid, 4, BAP0);
		FUNC3 (ai, (__le16*)&hdr, sizeof(hdr), BAP0);
		/* Bad CRC. Ignore packet */
		if (FUNC11(hdr.status) & 2)
			hdr.len = 0;
		if (ai->wifidev == NULL)
			hdr.len = 0;
	} else {
		FUNC4(ai, fid, 0x36, BAP0);
		FUNC3(ai, &hdr.len, 2, BAP0);
	}
	len = FUNC11(hdr.len);

	if (len > AIRO_DEF_MTU) {
		FUNC2(ai->dev->name, "Bad size %d", len);
		goto done;
	}
	if (len == 0)
		goto done;

	if (FUNC20(FLAG_802_11, &ai->flags)) {
		FUNC3(ai, &fc, sizeof (fc), BAP0);
		hdrlen = FUNC9(fc);
	} else
		hdrlen = ETH_ALEN * 2;

	skb = FUNC6(len + hdrlen + 2 + 2);
	if (!skb) {
		ai->dev->stats.rx_dropped++;
		goto done;
	}

	FUNC17(skb, 2); /* This way the IP header is aligned */
	buffer = (__le16 *) FUNC16(skb, len + hdrlen);
	if (FUNC20(FLAG_802_11, &ai->flags)) {
		buffer[0] = fc;
		FUNC3(ai, buffer + 1, hdrlen - 2, BAP0);
		if (hdrlen == 24)
			FUNC3(ai, tmpbuf, 6, BAP0);

		FUNC3(ai, &v, sizeof(v), BAP0);
		gap = FUNC11(v);
		if (gap) {
			if (gap <= 8) {
				FUNC3(ai, tmpbuf, gap, BAP0);
			} else {
				FUNC2(ai->dev->name, "gaplen too "
					"big. Problems will follow...");
			}
		}
		FUNC3(ai, buffer + hdrlen/2, len, BAP0);
	} else {
		MICBuffer micbuf;

		FUNC3(ai, buffer, ETH_ALEN * 2, BAP0);
		if (ai->micstats.enabled) {
			FUNC3(ai, (__le16 *) &micbuf, sizeof (micbuf), BAP0);
			if (FUNC15(micbuf.typelen) > 0x05DC)
				FUNC4(ai, fid, 0x44, BAP0);
			else {
				if (len <= sizeof (micbuf)) {
					FUNC7(skb);
					goto done;
				}

				len -= sizeof(micbuf);
				FUNC19(skb, len + hdrlen);
			}
		}

		FUNC3(ai, buffer + ETH_ALEN, len, BAP0);
		if (FUNC5(ai, &micbuf, (etherHead*) buffer, len))
			FUNC7 (skb);
		else
			success = 1;
	}

#ifdef WIRELESS_SPY
	if (success && (ai->spy_data.spy_number > 0)) {
		char *sa;
		struct iw_quality wstats;

		/* Prepare spy data : addr + qual */
		if (!test_bit(FLAG_802_11, &ai->flags)) {
			sa = (char *) buffer + 6;
			bap_setup(ai, fid, 8, BAP0);
			bap_read(ai, (__le16 *) hdr.rssi, 2, BAP0);
		} else
			sa = (char *) buffer + 10;
		wstats.qual = hdr.rssi[0];
		if (ai->rssi)
			wstats.level = 0x100 - ai->rssi[hdr.rssi[1]].rssidBm;
		else
			wstats.level = (hdr.rssi[1] + 321) / 2;
		wstats.noise = ai->wstats.qual.noise;
		wstats.updated =  IW_QUAL_LEVEL_UPDATED
				| IW_QUAL_QUAL_UPDATED
				| IW_QUAL_DBM;
		/* Update spy records */
		wireless_spy_update(ai->dev, sa, &wstats);
	}
#endif /* WIRELESS_SPY */

done:
	FUNC1(ai, EVACK, EV_RX);

	if (success) {
		if (FUNC20(FLAG_802_11, &ai->flags)) {
			FUNC18(skb);
			skb->pkt_type = PACKET_OTHERHOST;
			skb->dev = ai->wifidev;
			skb->protocol = FUNC10(ETH_P_802_2);
		} else
			skb->protocol = FUNC8(skb, ai->dev);
		skb->ip_summed = CHECKSUM_NONE;

		FUNC14(skb);
	}
}