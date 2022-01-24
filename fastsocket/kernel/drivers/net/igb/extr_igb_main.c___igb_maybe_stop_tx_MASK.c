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
typedef  scalar_t__ u16 ;
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  restart_queue; } ;
struct igb_ring {TYPE_1__ tx_stats; int /*<<< orphan*/  queue_index; struct net_device* netdev; } ;

/* Variables and functions */
 int EBUSY ; 
 scalar_t__ const FUNC0 (struct igb_ring*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static int FUNC4(struct igb_ring *tx_ring, const u16 size)
{
	struct net_device *netdev = tx_ring->netdev;

	FUNC1(netdev, tx_ring->queue_index);

	/* Herbert's original patch had:
	 *  smp_mb__after_netif_stop_queue();
	 * but since that doesn't exist yet, just open code it.
	 */
	FUNC3();

	/* We need to check again in a case another CPU has just
	 * made room available.
	 */
	if (FUNC0(tx_ring) < size)
		return -EBUSY;

	/* A reprieve! */
	FUNC2(netdev, tx_ring->queue_index);
	tx_ring->tx_stats.restart_queue++;
	return 0;
}