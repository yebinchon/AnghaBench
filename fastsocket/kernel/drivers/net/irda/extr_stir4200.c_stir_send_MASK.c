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
struct stir_cb {TYPE_2__* netdev; int /*<<< orphan*/  io_buf; int /*<<< orphan*/  usbdev; int /*<<< orphan*/  speed; scalar_t__ receiving; } ;
struct sk_buff {scalar_t__ len; } ;
struct TYPE_3__ {int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_bytes; int /*<<< orphan*/  tx_packets; } ;
struct TYPE_4__ {TYPE_1__ stats; int /*<<< orphan*/  trans_start; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRANSMIT_TIMEOUT ; 
 int /*<<< orphan*/  FUNC0 (struct stir_cb*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct sk_buff*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (struct stir_cb*) ; 
 int /*<<< orphan*/  FUNC5 (struct stir_cb*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 unsigned int FUNC8 (struct sk_buff*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC9 (struct sk_buff*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(struct stir_cb *stir, struct sk_buff *skb)
{
	unsigned wraplen;
	int first_frame = 0;

	/* if receiving, need to turnaround */
	if (stir->receiving) {
		FUNC4(stir);
		FUNC5(stir, FUNC1(skb));
		first_frame = 1;
	}

	if (FUNC2(stir->speed))
		wraplen = FUNC8(skb, stir->io_buf);
	else
		wraplen = FUNC9(skb, stir->io_buf);
		
	/* check for space available in fifo */
	if (!first_frame)
		FUNC0(stir, wraplen);

	stir->netdev->stats.tx_packets++;
	stir->netdev->stats.tx_bytes += skb->len;
	stir->netdev->trans_start = jiffies;
	FUNC3("send %d (%d)\n", skb->len, wraplen);

	if (FUNC6(stir->usbdev, FUNC7(stir->usbdev, 1),
			 stir->io_buf, wraplen,
			 NULL, TRANSMIT_TIMEOUT))
		stir->netdev->stats.tx_errors++;
}