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
struct b43_dmaring {TYPE_2__* dev; scalar_t__ tx; } ;
struct b43_dmadesc_meta {int /*<<< orphan*/ * skb; } ;
struct TYPE_4__ {TYPE_1__* wl; } ;
struct TYPE_3__ {int /*<<< orphan*/  hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline
    void FUNC2(struct b43_dmaring *ring,
				struct b43_dmadesc_meta *meta)
{
	if (meta->skb) {
		if (ring->tx)
			FUNC1(ring->dev->wl->hw, meta->skb);
		else
			FUNC0(meta->skb);
		meta->skb = NULL;
	}
}