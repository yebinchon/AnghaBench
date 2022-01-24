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
typedef  int u8 ;
struct TYPE_2__ {int tx_carrier_errors; int tx_heartbeat_errors; int collisions; int tx_window_errors; int rx_fifo_errors; int tx_packets; int /*<<< orphan*/  tx_bytes; } ;
struct net_device {unsigned int base_addr; TYPE_1__ stats; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 unsigned int EL3_STATUS ; 
 int FUNC2 (unsigned int) ; 
 int FUNC3 (unsigned int) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	unsigned int ioaddr = dev->base_addr;
	u8 rx, tx, up;

	FUNC0(2, "%s: updating the statistics.\n", dev->name);

	if (FUNC3(ioaddr+EL3_STATUS) == 0xffff) /* No card. */
		return;
		
	/* Unlike the 3c509 we need not turn off stats updates while reading. */
	/* Switch to the stats window, and read everything. */
	FUNC1(6);
	dev->stats.tx_carrier_errors 		+= FUNC2(ioaddr + 0);
	dev->stats.tx_heartbeat_errors		+= FUNC2(ioaddr + 1);
	/* Multiple collisions. */	   	FUNC2(ioaddr + 2);
	dev->stats.collisions			+= FUNC2(ioaddr + 3);
	dev->stats.tx_window_errors		+= FUNC2(ioaddr + 4);
	dev->stats.rx_fifo_errors		+= FUNC2(ioaddr + 5);
	dev->stats.tx_packets			+= FUNC2(ioaddr + 6);
	up		 			 = FUNC2(ioaddr + 9);
	dev->stats.tx_packets			+= (up&0x30) << 4;
	/* Rx packets   */			   FUNC2(ioaddr + 7);
	/* Tx deferrals */			   FUNC2(ioaddr + 8);
	rx		 			 = FUNC3(ioaddr + 10);
	tx					 = FUNC3(ioaddr + 12);

	FUNC1(4);
	/* BadSSD */				   FUNC2(ioaddr + 12);
	up					 = FUNC2(ioaddr + 13);

	dev->stats.tx_bytes 			+= tx + ((up & 0xf0) << 12);

	FUNC1(1);
}