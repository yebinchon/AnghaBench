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
struct TYPE_2__ {int /*<<< orphan*/  tx_queue_AC_BK; int /*<<< orphan*/  tx_queue_AC_BE; int /*<<< orphan*/  tx_queue_AC_VI; int /*<<< orphan*/  tx_queue_AC_VO; int /*<<< orphan*/  tx_queue_mcast; } ;
struct b43_wldev {TYPE_1__ pio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_wldev*,int /*<<< orphan*/ ) ; 

void FUNC2(struct b43_wldev *dev)
{
	FUNC0(dev->pio.tx_queue_mcast);
	FUNC0(dev->pio.tx_queue_AC_VO);
	FUNC0(dev->pio.tx_queue_AC_VI);
	FUNC0(dev->pio.tx_queue_AC_BE);
	FUNC0(dev->pio.tx_queue_AC_BK);
	FUNC1(dev, 0);
}