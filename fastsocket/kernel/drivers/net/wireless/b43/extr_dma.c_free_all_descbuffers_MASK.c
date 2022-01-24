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
struct b43_dmaring {int nr_slots; int /*<<< orphan*/  rx_buffersize; scalar_t__ tx; TYPE_1__* ops; int /*<<< orphan*/  used_slots; } ;
struct b43_dmadesc_meta {int /*<<< orphan*/  dmaaddr; TYPE_2__* skb; } ;
struct TYPE_4__ {int /*<<< orphan*/  len; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* idx2desc ) (struct b43_dmaring*,int,struct b43_dmadesc_meta**) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_dmaring*,struct b43_dmadesc_meta*) ; 
 int /*<<< orphan*/  FUNC3 (struct b43_dmaring*,int,struct b43_dmadesc_meta**) ; 
 int /*<<< orphan*/  FUNC4 (struct b43_dmaring*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct b43_dmaring *ring)
{
	struct b43_dmadesc_meta *meta;
	int i;

	if (!ring->used_slots)
		return;
	for (i = 0; i < ring->nr_slots; i++) {
		/* get meta - ignore returned value */
		ring->ops->idx2desc(ring, i, &meta);

		if (!meta->skb || FUNC1(meta->skb)) {
			FUNC0(!ring->tx);
			continue;
		}
		if (ring->tx) {
			FUNC4(ring, meta->dmaaddr,
					 meta->skb->len, 1);
		} else {
			FUNC4(ring, meta->dmaaddr,
					 ring->rx_buffersize, 0);
		}
		FUNC2(ring, meta);
	}
}