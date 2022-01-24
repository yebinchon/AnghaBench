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
struct b43_pio {int dummy; } ;
struct b43_wldev {struct b43_pio pio; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct b43_wldev*) ; 
 int /*<<< orphan*/  FUNC1 (struct b43_pio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b43_pio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rx_queue ; 
 int /*<<< orphan*/  tx_queue_AC_BE ; 
 int /*<<< orphan*/  tx_queue_AC_BK ; 
 int /*<<< orphan*/  tx_queue_AC_VI ; 
 int /*<<< orphan*/  tx_queue_AC_VO ; 
 int /*<<< orphan*/  tx_queue_mcast ; 

void FUNC3(struct b43_wldev *dev)
{
	struct b43_pio *pio;

	if (!FUNC0(dev))
		return;
	pio = &dev->pio;

	FUNC1(pio, rx_queue);
	FUNC2(pio, tx_queue_mcast);
	FUNC2(pio, tx_queue_AC_VO);
	FUNC2(pio, tx_queue_AC_VI);
	FUNC2(pio, tx_queue_AC_BE);
	FUNC2(pio, tx_queue_AC_BK);
}