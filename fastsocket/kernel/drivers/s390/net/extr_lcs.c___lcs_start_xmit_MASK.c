#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u16 ;
struct sk_buff {scalar_t__ protocol; scalar_t__ len; } ;
struct net_device {int dummy; } ;
struct lcs_header {scalar_t__ offset; int /*<<< orphan*/  slot; int /*<<< orphan*/  type; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  tx_carrier_errors; int /*<<< orphan*/  tx_errors; } ;
struct lcs_card {scalar_t__ state; scalar_t__ tx_emitted; int /*<<< orphan*/  lock; TYPE_2__* tx_buffer; int /*<<< orphan*/  dev; TYPE_1__ stats; int /*<<< orphan*/  portno; int /*<<< orphan*/  lan_type; int /*<<< orphan*/  write; } ;
struct TYPE_4__ {scalar_t__ count; scalar_t__ data; int /*<<< orphan*/  callback; } ;

/* Variables and functions */
 scalar_t__ DEV_STATE_UP ; 
 int /*<<< orphan*/  ETH_P_IPV6 ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ LCS_IOBUFFERSIZE ; 
 int NETDEV_TX_BUSY ; 
 int NETDEV_TX_OK ; 
 int /*<<< orphan*/  FUNC1 (struct lcs_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct sk_buff*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lcs_txbuffer_cb ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,struct lcs_header*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  trace ; 

__attribute__((used)) static int
FUNC10(struct lcs_card *card, struct sk_buff *skb,
		 struct net_device *dev)
{
	struct lcs_header *header;
	int rc = NETDEV_TX_OK;

	FUNC0(5, trace, "hardxmit");
	if (skb == NULL) {
		card->stats.tx_dropped++;
		card->stats.tx_errors++;
		return NETDEV_TX_OK;
	}
	if (card->state != DEV_STATE_UP) {
		FUNC2(skb);
		card->stats.tx_dropped++;
		card->stats.tx_errors++;
		card->stats.tx_carrier_errors++;
		return NETDEV_TX_OK;
	}
	if (skb->protocol == FUNC3(ETH_P_IPV6)) {
		FUNC2(skb);
		return NETDEV_TX_OK;
	}
	FUNC5(card->dev);
	FUNC8(&card->lock);
	if (card->tx_buffer != NULL &&
	    card->tx_buffer->count + sizeof(struct lcs_header) +
	    skb->len + sizeof(u16) > LCS_IOBUFFERSIZE)
		/* skb too big for current tx buffer. */
		FUNC1(card);
	if (card->tx_buffer == NULL) {
		/* Get new tx buffer */
		card->tx_buffer = FUNC4(&card->write);
		if (card->tx_buffer == NULL) {
			card->stats.tx_dropped++;
			rc = NETDEV_TX_BUSY;
			goto out;
		}
		card->tx_buffer->callback = lcs_txbuffer_cb;
		card->tx_buffer->count = 0;
	}
	header = (struct lcs_header *)
		(card->tx_buffer->data + card->tx_buffer->count);
	card->tx_buffer->count += skb->len + sizeof(struct lcs_header);
	header->offset = card->tx_buffer->count;
	header->type = card->lan_type;
	header->slot = card->portno;
	FUNC7(skb, header + 1, skb->len);
	FUNC9(&card->lock);
	card->stats.tx_bytes += skb->len;
	card->stats.tx_packets++;
	FUNC2(skb);
	FUNC6(card->dev);
	FUNC8(&card->lock);
	if (card->tx_emitted <= 0 && card->tx_buffer != NULL)
		/* If this is the first tx buffer emit it immediately. */
		FUNC1(card);
out:
	FUNC9(&card->lock);
	return rc;
}