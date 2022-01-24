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
typedef  int u16 ;
struct sk_buff {int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  protocol; int /*<<< orphan*/ * dev; int /*<<< orphan*/  pkt_type; } ;
struct rx_hdr {size_t* rssi; scalar_t__ len; scalar_t__ status; } ;
struct iw_quality {size_t qual; int level; int updated; int /*<<< orphan*/  noise; } ;
struct TYPE_14__ {int /*<<< orphan*/  noise; } ;
struct TYPE_15__ {TYPE_4__ qual; } ;
struct TYPE_12__ {scalar_t__ spy_number; } ;
struct airo_info {TYPE_6__* rxfids; int /*<<< orphan*/ * wifidev; TYPE_8__* dev; TYPE_5__ wstats; TYPE_3__* rssi; TYPE_2__ spy_data; } ;
typedef  int /*<<< orphan*/  rxd ;
typedef  int /*<<< orphan*/  hdr ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_11__ {int /*<<< orphan*/  rx_dropped; } ;
struct TYPE_18__ {int /*<<< orphan*/  name; TYPE_1__ stats; } ;
struct TYPE_17__ {int valid; int /*<<< orphan*/  len; scalar_t__ rdy; } ;
struct TYPE_16__ {char* virtual_host_addr; int /*<<< orphan*/  card_ram_off; } ;
struct TYPE_13__ {int rssidBm; } ;
typedef  TYPE_7__ RxFid ;

/* Variables and functions */
 int AIRO_DEF_MTU ; 
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int /*<<< orphan*/  ETH_P_802_2 ; 
 int IW_QUAL_DBM ; 
 int IW_QUAL_LEVEL_UPDATED ; 
 int IW_QUAL_QUAL_UPDATED ; 
 int /*<<< orphan*/  PACKET_OTHERHOST ; 
 int /*<<< orphan*/  PKTSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 struct sk_buff* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,TYPE_7__*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct sk_buff*) ; 
 scalar_t__ FUNC11 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_8__*,char*,struct iw_quality*) ; 

__attribute__((used)) static void FUNC14(struct airo_info *ai)
{
	RxFid rxd;
	struct sk_buff *skb = NULL;
	u16 len, hdrlen = 0;
	__le16 fc;
	struct rx_hdr hdr;
	u16 gap;
	u16 *buffer;
	char *ptr = ai->rxfids[0].virtual_host_addr + 4;

	FUNC8(&rxd, ai->rxfids[0].card_ram_off, sizeof(rxd));
	FUNC7 ((char *)&hdr, ptr, sizeof(hdr));
	ptr += sizeof(hdr);
	/* Bad CRC. Ignore packet */
	if (FUNC6(hdr.status) & 2)
		hdr.len = 0;
	if (ai->wifidev == NULL)
		hdr.len = 0;
	len = FUNC6(hdr.len);
	if (len > AIRO_DEF_MTU) {
		FUNC0(ai->dev->name, "Bad size %d", len);
		goto badrx;
	}
	if (len == 0)
		goto badrx;

	fc = FUNC2((__le16 *)ptr);
	hdrlen = FUNC4(fc);

	skb = FUNC1( len + hdrlen + 2 );
	if ( !skb ) {
		ai->dev->stats.rx_dropped++;
		goto badrx;
	}
	buffer = (u16*)FUNC11 (skb, len + hdrlen);
	FUNC7 ((char *)buffer, ptr, hdrlen);
	ptr += hdrlen;
	if (hdrlen == 24)
		ptr += 6;
	gap = FUNC3(ptr);
	ptr += sizeof(__le16);
	if (gap) {
		if (gap <= 8)
			ptr += gap;
		else
			FUNC0(ai->dev->name,
			    "gaplen too big. Problems will follow...");
	}
	FUNC7 ((char *)buffer + hdrlen, ptr, len);
	ptr += len;
#ifdef IW_WIRELESS_SPY	  /* defined in iw_handler.h */
	if (ai->spy_data.spy_number > 0) {
		char *sa;
		struct iw_quality wstats;
		/* Prepare spy data : addr + qual */
		sa = (char*)buffer + 10;
		wstats.qual = hdr.rssi[0];
		if (ai->rssi)
			wstats.level = 0x100 - ai->rssi[hdr.rssi[1]].rssidBm;
		else
			wstats.level = (hdr.rssi[1] + 321) / 2;
		wstats.noise = ai->wstats.qual.noise;
		wstats.updated = IW_QUAL_QUAL_UPDATED
			| IW_QUAL_LEVEL_UPDATED
			| IW_QUAL_DBM;
		/* Update spy records */
		wireless_spy_update(ai->dev, sa, &wstats);
	}
#endif /* IW_WIRELESS_SPY */
	FUNC12(skb);
	skb->pkt_type = PACKET_OTHERHOST;
	skb->dev = ai->wifidev;
	skb->protocol = FUNC5(ETH_P_802_2);
	skb->ip_summed = CHECKSUM_NONE;
	FUNC10( skb );

badrx:
	if (rxd.valid == 0) {
		rxd.valid = 1;
		rxd.rdy = 0;
		rxd.len = PKTSIZE;
		FUNC9(ai->rxfids[0].card_ram_off, &rxd, sizeof(rxd));
	}
}