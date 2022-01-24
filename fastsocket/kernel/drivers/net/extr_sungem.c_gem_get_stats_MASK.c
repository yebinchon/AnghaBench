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
struct net_device_stats {int /*<<< orphan*/  collisions; int /*<<< orphan*/  tx_aborted_errors; int /*<<< orphan*/  rx_length_errors; int /*<<< orphan*/  rx_frame_errors; int /*<<< orphan*/  rx_crc_errors; } ;
struct net_device {int dummy; } ;
struct gem {struct net_device_stats net_stats; int /*<<< orphan*/  lock; int /*<<< orphan*/  tx_lock; scalar_t__ regs; scalar_t__ running; } ;

/* Variables and functions */
 scalar_t__ MAC_AERR ; 
 scalar_t__ MAC_ECOLL ; 
 scalar_t__ MAC_FCSERR ; 
 scalar_t__ MAC_LCOLL ; 
 scalar_t__ MAC_LERR ; 
 struct gem* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static struct net_device_stats *FUNC7(struct net_device *dev)
{
	struct gem *gp = FUNC0(dev);
	struct net_device_stats *stats = &gp->net_stats;

	FUNC3(&gp->lock);
	FUNC2(&gp->tx_lock);

	/* I have seen this being called while the PM was in progress,
	 * so we shield against this
	 */
	if (gp->running) {
		stats->rx_crc_errors += FUNC1(gp->regs + MAC_FCSERR);
		FUNC6(0, gp->regs + MAC_FCSERR);

		stats->rx_frame_errors += FUNC1(gp->regs + MAC_AERR);
		FUNC6(0, gp->regs + MAC_AERR);

		stats->rx_length_errors += FUNC1(gp->regs + MAC_LERR);
		FUNC6(0, gp->regs + MAC_LERR);

		stats->tx_aborted_errors += FUNC1(gp->regs + MAC_ECOLL);
		stats->collisions +=
			(FUNC1(gp->regs + MAC_ECOLL) +
			 FUNC1(gp->regs + MAC_LCOLL));
		FUNC6(0, gp->regs + MAC_ECOLL);
		FUNC6(0, gp->regs + MAC_LCOLL);
	}

	FUNC4(&gp->tx_lock);
	FUNC5(&gp->lock);

	return &gp->net_stats;
}