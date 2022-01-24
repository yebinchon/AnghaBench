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
typedef  int /*<<< orphan*/  u64 ;
struct TYPE_2__ {int /*<<< orphan*/  tx_underun; int /*<<< orphan*/  tx_aborted; int /*<<< orphan*/  rx_multicast; int /*<<< orphan*/  rx_broadcast; int /*<<< orphan*/  rx_unicast; int /*<<< orphan*/  tx_multi_collision; int /*<<< orphan*/  tx_one_collision; int /*<<< orphan*/  align_errors; int /*<<< orphan*/  rx_missed; int /*<<< orphan*/  rx_errors; int /*<<< orphan*/  tx_errors; int /*<<< orphan*/  rx_packets; int /*<<< orphan*/  tx_packets; } ;
struct rtl8169_private {TYPE_1__ counters; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct rtl8169_private* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 

__attribute__((used)) static void FUNC6(struct net_device *dev,
				      struct ethtool_stats *stats, u64 *data)
{
	struct rtl8169_private *tp = FUNC4(dev);

	FUNC0();

	FUNC5(dev);

	data[0] = FUNC3(tp->counters.tx_packets);
	data[1] = FUNC3(tp->counters.rx_packets);
	data[2] = FUNC3(tp->counters.tx_errors);
	data[3] = FUNC2(tp->counters.rx_errors);
	data[4] = FUNC1(tp->counters.rx_missed);
	data[5] = FUNC1(tp->counters.align_errors);
	data[6] = FUNC2(tp->counters.tx_one_collision);
	data[7] = FUNC2(tp->counters.tx_multi_collision);
	data[8] = FUNC3(tp->counters.rx_unicast);
	data[9] = FUNC3(tp->counters.rx_broadcast);
	data[10] = FUNC2(tp->counters.rx_multicast);
	data[11] = FUNC1(tp->counters.tx_aborted);
	data[12] = FUNC1(tp->counters.tx_underun);
}