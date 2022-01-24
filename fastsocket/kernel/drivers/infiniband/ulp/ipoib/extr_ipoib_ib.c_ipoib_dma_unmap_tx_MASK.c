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
typedef  int /*<<< orphan*/  u64 ;
struct sk_buff {int dummy; } ;
struct ipoib_tx_buf {int /*<<< orphan*/ * mapping; struct sk_buff* skb; } ;
struct ib_device {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  size; } ;
typedef  TYPE_1__ skb_frag_t ;
struct TYPE_4__ {int nr_frags; TYPE_1__* frags; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (struct ib_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ib_device*,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct sk_buff*) ; 
 TYPE_2__* FUNC3 (struct sk_buff*) ; 

__attribute__((used)) static void FUNC4(struct ib_device *ca,
			       struct ipoib_tx_buf *tx_req)
{
	struct sk_buff *skb = tx_req->skb;
	u64 *mapping = tx_req->mapping;
	int i;
	int off;

	if (FUNC2(skb)) {
		FUNC1(ca, mapping[0], FUNC2(skb), DMA_TO_DEVICE);
		off = 1;
	} else
		off = 0;

	for (i = 0; i < FUNC3(skb)->nr_frags; ++i) {
		skb_frag_t *frag = &FUNC3(skb)->frags[i];
		FUNC0(ca, mapping[i + off], frag->size,
				  DMA_TO_DEVICE);
	}
}