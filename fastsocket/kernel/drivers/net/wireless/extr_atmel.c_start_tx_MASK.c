#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u16 ;
struct sk_buff {scalar_t__ len; unsigned char* data; } ;
struct TYPE_2__ {int tx_bytes; int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  tx_errors; } ;
struct net_device {int const* dev_addr; TYPE_1__ stats; int /*<<< orphan*/  trans_start; } ;
struct ieee80211_hdr {int /*<<< orphan*/  frame_control; int /*<<< orphan*/  addr4; int /*<<< orphan*/  addr3; int /*<<< orphan*/  addr2; int /*<<< orphan*/  addr1; scalar_t__ seq_ctrl; scalar_t__ duration_id; } ;
struct atmel_private {scalar_t__ station_state; scalar_t__ operating_mode; int const* BSSID; int const* CurrentBSSID; int /*<<< orphan*/  timerlock; int /*<<< orphan*/  irqlock; int /*<<< orphan*/  tx_buff_tail; scalar_t__ use_wpa; scalar_t__ wep_is_on; scalar_t__ card; int /*<<< orphan*/  (* present_callback ) (scalar_t__) ;} ;
typedef  int /*<<< orphan*/  netdev_tx_t ;

/* Variables and functions */
 int DATA_FRAME_WS_HEADER_SIZE ; 
 scalar_t__ ETH_ZLEN ; 
 int IEEE80211_FCTL_PROTECTED ; 
 int IEEE80211_FCTL_TODS ; 
 int IEEE80211_FTYPE_DATA ; 
 scalar_t__ IW_MODE_ADHOC ; 
 int /*<<< orphan*/  NETDEV_TX_BUSY ; 
 int /*<<< orphan*/  NETDEV_TX_OK ; 
 scalar_t__ STATION_STATE_READY ; 
 int /*<<< orphan*/  TX_PACKET_TYPE_DATA ; 
 int /*<<< orphan*/  FUNC0 (struct net_device*,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 int FUNC3 (struct atmel_private*,int) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int const*,int) ; 
 struct atmel_private* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct atmel_private*,int,int,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static netdev_tx_t FUNC14(struct sk_buff *skb, struct net_device *dev)
{
	static const u8 SNAP_RFC1024[6] = { 0xaa, 0xaa, 0x03, 0x00, 0x00, 0x00 };
	struct atmel_private *priv = FUNC5(dev);
	struct ieee80211_hdr header;
	unsigned long flags;
	u16 buff, frame_ctl, len = (ETH_ZLEN < skb->len) ? skb->len : ETH_ZLEN;

	if (priv->card && priv->present_callback &&
	    !(*priv->present_callback)(priv->card)) {
		dev->stats.tx_errors++;
		FUNC2(skb);
		return NETDEV_TX_OK;
	}

	if (priv->station_state != STATION_STATE_READY) {
		dev->stats.tx_errors++;
		FUNC2(skb);
		return NETDEV_TX_OK;
	}

	/* first ensure the timer func cannot run */
	FUNC8(&priv->timerlock);
	/* then stop the hardware ISR */
	FUNC9(&priv->irqlock, flags);
	/* nb doing the above in the opposite order will deadlock */

	/* The Wireless Header is 30 bytes. In the Ethernet packet we "cut" the
	   12 first bytes (containing DA/SA) and put them in the appropriate
	   fields of the Wireless Header. Thus the packet length is then the
	   initial + 18 (+30-12) */

	if (!(buff = FUNC3(priv, len + 18))) {
		dev->stats.tx_dropped++;
		FUNC11(&priv->irqlock, flags);
		FUNC10(&priv->timerlock);
		FUNC6(dev);
		return NETDEV_TX_BUSY;
	}

	frame_ctl = IEEE80211_FTYPE_DATA;
	header.duration_id = 0;
	header.seq_ctrl = 0;
	if (priv->wep_is_on)
		frame_ctl |= IEEE80211_FCTL_PROTECTED;
	if (priv->operating_mode == IW_MODE_ADHOC) {
		FUNC7(skb, &header.addr1, 6);
		FUNC4(&header.addr2, dev->dev_addr, 6);
		FUNC4(&header.addr3, priv->BSSID, 6);
	} else {
		frame_ctl |= IEEE80211_FCTL_TODS;
		FUNC4(&header.addr1, priv->CurrentBSSID, 6);
		FUNC4(&header.addr2, dev->dev_addr, 6);
		FUNC7(skb, &header.addr3, 6);
	}

	if (priv->use_wpa)
		FUNC4(&header.addr4, SNAP_RFC1024, 6);

	header.frame_control = FUNC1(frame_ctl);
	/* Copy the wireless header into the card */
	FUNC0(dev, buff, (unsigned char *)&header, DATA_FRAME_WS_HEADER_SIZE);
	/* Copy the packet sans its 802.3 header addresses which have been replaced */
	FUNC0(dev, buff + DATA_FRAME_WS_HEADER_SIZE, skb->data + 12, len - 12);
	priv->tx_buff_tail += len - 12 + DATA_FRAME_WS_HEADER_SIZE;

	/* low bit of first byte of destination tells us if broadcast */
	FUNC13(priv, *(skb->data) & 0x01, len + 18, buff, TX_PACKET_TYPE_DATA);
	dev->trans_start = jiffies;
	dev->stats.tx_bytes += len;

	FUNC11(&priv->irqlock, flags);
	FUNC10(&priv->timerlock);
	FUNC2(skb);

	return NETDEV_TX_OK;
}