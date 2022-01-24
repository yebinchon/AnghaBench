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
struct strip {int /*<<< orphan*/  rx_over_errors; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  rx_packets; } ;
struct net_device_stats {int /*<<< orphan*/  rx_over_errors; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  tx_dropped; int /*<<< orphan*/  rx_dropped; int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  rx_packets; } ;
struct net_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device_stats*,int /*<<< orphan*/ ,int) ; 
 struct strip* FUNC1 (struct net_device*) ; 

__attribute__((used)) static struct net_device_stats *FUNC2(struct net_device *dev)
{
	struct strip *strip_info = FUNC1(dev);
	static struct net_device_stats stats;

	FUNC0(&stats, 0, sizeof(struct net_device_stats));

	stats.rx_packets = strip_info->rx_packets;
	stats.tx_packets = strip_info->tx_packets;
	stats.rx_dropped = strip_info->rx_dropped;
	stats.tx_dropped = strip_info->tx_dropped;
	stats.tx_errors = strip_info->tx_errors;
	stats.rx_errors = strip_info->rx_errors;
	stats.rx_over_errors = strip_info->rx_over_errors;
	return (&stats);
}