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
struct ath_common {int /*<<< orphan*/  rx_bufsize; } ;
struct ath5k_hw {int /*<<< orphan*/  dev; } ;
struct ath5k_buf {TYPE_1__* desc; scalar_t__ skbaddr; int /*<<< orphan*/ * skb; } ;
struct TYPE_2__ {scalar_t__ ds_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMA_FROM_DEVICE ; 
 struct ath_common* FUNC1 (struct ath5k_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void
FUNC4(struct ath5k_hw *ah, struct ath5k_buf *bf)
{
	struct ath_common *common = FUNC1(ah);

	FUNC0(!bf);
	if (!bf->skb)
		return;
	FUNC3(ah->dev, bf->skbaddr, common->rx_bufsize,
			DMA_FROM_DEVICE);
	FUNC2(bf->skb);
	bf->skb = NULL;
	bf->skbaddr = 0;
	bf->desc->ds_data = 0;
}