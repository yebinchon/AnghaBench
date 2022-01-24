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
struct ath5k_hw {int /*<<< orphan*/  hw; int /*<<< orphan*/  dev; } ;
struct ath5k_buf {TYPE_1__* desc; scalar_t__ skbaddr; TYPE_2__* skb; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; } ;
struct TYPE_3__ {scalar_t__ ds_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  DMA_TO_DEVICE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,TYPE_2__*) ; 

void
FUNC3(struct ath5k_hw *ah, struct ath5k_buf *bf)
{
	FUNC0(!bf);
	if (!bf->skb)
		return;
	FUNC1(ah->dev, bf->skbaddr, bf->skb->len,
			DMA_TO_DEVICE);
	FUNC2(ah->hw, bf->skb);
	bf->skb = NULL;
	bf->skbaddr = 0;
	bf->desc->ds_data = 0;
}