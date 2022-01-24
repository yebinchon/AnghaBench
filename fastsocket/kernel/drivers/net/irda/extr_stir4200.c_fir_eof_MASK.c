#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int len; int truesize; scalar_t__ head; scalar_t__ data; struct sk_buff* skb; } ;
struct stir_cb {TYPE_2__* netdev; TYPE_3__ rx_buff; } ;
struct sk_buff {TYPE_2__* dev; int /*<<< orphan*/  protocol; scalar_t__ data; } ;
typedef  TYPE_3__ iobuff_t ;
typedef  int /*<<< orphan*/  __u32 ;
struct TYPE_4__ {int rx_bytes; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  rx_crc_errors; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  rx_length_errors; } ;
struct TYPE_5__ {TYPE_1__ stats; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_IRDA ; 
 int IRDA_RX_COPY_THRESHOLD ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int) ; 
 struct sk_buff* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (struct sk_buff*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct sk_buff*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct sk_buff*) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct stir_cb *stir)
{
	iobuff_t *rx_buff = &stir->rx_buff;
	int len = rx_buff->len - 4;
	struct sk_buff *skb, *nskb;
	__u32 fcs;

	if (FUNC10(len <= 0)) {
		FUNC5("%s: short frame len %d\n",
			 stir->netdev->name, len);

		++stir->netdev->stats.rx_errors;
		++stir->netdev->stats.rx_length_errors;
		return;
	}

	fcs = ~(FUNC0(~0, rx_buff->data, len));
	if (fcs != FUNC2(rx_buff->data + len)) {
		FUNC5("crc error calc 0x%x len %d\n", fcs, len);
		stir->netdev->stats.rx_errors++;
		stir->netdev->stats.rx_crc_errors++;
		return;
	}

	/* if frame is short then just copy it */
	if (len < IRDA_RX_COPY_THRESHOLD) {
		nskb = FUNC1(len + 1);
		if (FUNC10(!nskb)) {
			++stir->netdev->stats.rx_dropped;
			return;
		}
		FUNC8(nskb, 1);
		skb = nskb;
		FUNC6(nskb, rx_buff->data, len);
	} else {
		nskb = FUNC1(rx_buff->truesize);
		if (FUNC10(!nskb)) {
			++stir->netdev->stats.rx_dropped;
			return;
		}
		FUNC8(nskb, 1);
		skb = rx_buff->skb;
		rx_buff->skb = nskb;
		rx_buff->head = nskb->data;
	}

	FUNC7(skb, len);

	FUNC9(skb);
	skb->protocol = FUNC3(ETH_P_IRDA);
	skb->dev = stir->netdev;

	FUNC4(skb);

	stir->netdev->stats.rx_packets++;
	stir->netdev->stats.rx_bytes += len;

	rx_buff->data = rx_buff->head;
	rx_buff->len = 0;
}