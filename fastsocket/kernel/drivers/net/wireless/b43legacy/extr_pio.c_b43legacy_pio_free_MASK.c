#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct b43legacy_pio {int /*<<< orphan*/ * queue0; int /*<<< orphan*/ * queue1; int /*<<< orphan*/ * queue2; int /*<<< orphan*/ * queue3; } ;
struct b43legacy_wldev {struct b43legacy_pio pio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct b43legacy_wldev*) ; 

void FUNC2(struct b43legacy_wldev *dev)
{
	struct b43legacy_pio *pio;

	if (!FUNC1(dev))
		return;
	pio = &dev->pio;

	FUNC0(pio->queue3);
	pio->queue3 = NULL;
	FUNC0(pio->queue2);
	pio->queue2 = NULL;
	FUNC0(pio->queue1);
	pio->queue1 = NULL;
	FUNC0(pio->queue0);
	pio->queue0 = NULL;
}