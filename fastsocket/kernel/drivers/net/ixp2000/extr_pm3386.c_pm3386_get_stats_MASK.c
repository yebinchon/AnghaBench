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
struct net_device_stats {void* tx_bytes; void* rx_bytes; void* tx_packets; void* rx_packets; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device_stats*,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (int,int) ; 
 int FUNC2 (int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int,int,int) ; 

void FUNC4(int port, struct net_device_stats *stats)
{
	/*
	 * Snapshot statistics counters.
	 */
	FUNC3(port, 0x500, 0x100, 0x0001);
	while (FUNC2(port, 0x500, 0x100) & 0x0001)
		;

	FUNC0(stats, 0, sizeof(*stats));

	stats->rx_packets = FUNC1(port, 0x510);
	stats->tx_packets = FUNC1(port, 0x590);
	stats->rx_bytes = FUNC1(port, 0x514);
	stats->tx_bytes = FUNC1(port, 0x594);
	/* @@@ Add other stats.  */
}