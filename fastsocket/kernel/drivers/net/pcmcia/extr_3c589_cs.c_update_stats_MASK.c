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
struct TYPE_2__ {int /*<<< orphan*/  tx_packets; int /*<<< orphan*/  rx_fifo_errors; int /*<<< orphan*/  tx_window_errors; int /*<<< orphan*/  collisions; int /*<<< orphan*/  tx_heartbeat_errors; int /*<<< orphan*/  tx_carrier_errors; } ;
struct net_device {unsigned int base_addr; TYPE_1__ stats; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ EL3_CMD ; 
 int /*<<< orphan*/  StatsDisable ; 
 int /*<<< orphan*/  StatsEnable ; 
 scalar_t__ FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct net_device *dev)
{
    unsigned int ioaddr = dev->base_addr;

    FUNC0(2, "%s: updating the statistics.\n", dev->name);
    /* Turn off statistics updates while reading. */
    FUNC4(StatsDisable, ioaddr + EL3_CMD);
    /* Switch to the stats window, and read everything. */
    FUNC1(6);
    dev->stats.tx_carrier_errors 	+= FUNC2(ioaddr + 0);
    dev->stats.tx_heartbeat_errors	+= FUNC2(ioaddr + 1);
    /* Multiple collisions. */	   	FUNC2(ioaddr + 2);
    dev->stats.collisions		+= FUNC2(ioaddr + 3);
    dev->stats.tx_window_errors		+= FUNC2(ioaddr + 4);
    dev->stats.rx_fifo_errors		+= FUNC2(ioaddr + 5);
    dev->stats.tx_packets		+= FUNC2(ioaddr + 6);
    /* Rx packets   */			FUNC2(ioaddr + 7);
    /* Tx deferrals */			FUNC2(ioaddr + 8);
    /* Rx octets */			FUNC3(ioaddr + 10);
    /* Tx octets */			FUNC3(ioaddr + 12);
    
    /* Back to window 1, and turn statistics back on. */
    FUNC1(1);
    FUNC4(StatsEnable, ioaddr + EL3_CMD);
}