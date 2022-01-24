#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned char u8 ;
typedef  int u32 ;
typedef  int u16 ;
struct sk_buff {int /*<<< orphan*/  ip_summed; int /*<<< orphan*/  protocol; } ;
struct ieee80211_hdr {int /*<<< orphan*/  addr2; int /*<<< orphan*/  addr3; int /*<<< orphan*/  frame_control; int /*<<< orphan*/  addr1; } ;
struct atmel_private {TYPE_2__* dev; scalar_t__ do_rx_crc; } ;
struct TYPE_4__ {int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_bytes; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_dropped; } ;
struct TYPE_5__ {TYPE_1__ stats; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHECKSUM_NONE ; 
 int IEEE80211_FCTL_FROMDS ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,void*,int,int) ; 
 int FUNC1 (int,unsigned char*,int) ; 
 struct sk_buff* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*,TYPE_2__*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*) ; 
 unsigned char* FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*,int) ; 

__attribute__((used)) static void FUNC10(struct atmel_private *priv,
			 struct ieee80211_hdr *header,
			 u16 msdu_size, u16 rx_packet_loc, u32 crc)
{
	/* fast path: unfragmented packet copy directly into skbuf */
	u8 mac4[6];
	struct sk_buff	*skb;
	unsigned char *skbp;

	/* get the final, mac 4 header field, this tells us encapsulation */
	FUNC0(priv->dev, mac4, rx_packet_loc + 24, 6);
	msdu_size -= 6;

	if (priv->do_rx_crc) {
		crc = FUNC1(crc, mac4, 6);
		msdu_size -= 4;
	}

	if (!(skb = FUNC2(msdu_size + 14))) {
		priv->dev->stats.rx_dropped++;
		return;
	}

	FUNC9(skb, 2);
	skbp = FUNC8(skb, msdu_size + 12);
	FUNC0(priv->dev, skbp + 12, rx_packet_loc + 30, msdu_size);

	if (priv->do_rx_crc) {
		u32 netcrc;
		crc = FUNC1(crc, skbp + 12, msdu_size);
		FUNC0(priv->dev, (void *)&netcrc, rx_packet_loc + 30 + msdu_size, 4);
		if ((crc ^ 0xffffffff) != netcrc) {
			priv->dev->stats.rx_crc_errors++;
			FUNC3(skb);
			return;
		}
	}

	FUNC6(skbp, header->addr1, 6); /* destination address */
	if (FUNC5(header->frame_control) & IEEE80211_FCTL_FROMDS)
		FUNC6(&skbp[6], header->addr3, 6);
	else
		FUNC6(&skbp[6], header->addr2, 6); /* source address */

	skb->protocol = FUNC4(skb, priv->dev);
	skb->ip_summed = CHECKSUM_NONE;
	FUNC7(skb);
	priv->dev->stats.rx_bytes += 12 + msdu_size;
	priv->dev->stats.rx_packets++;
}