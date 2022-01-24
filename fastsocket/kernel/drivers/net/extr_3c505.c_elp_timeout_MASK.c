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
struct TYPE_2__ {int /*<<< orphan*/  tx_dropped; } ;
struct net_device {TYPE_1__ stats; int /*<<< orphan*/  trans_start; int /*<<< orphan*/  name; int /*<<< orphan*/  base_addr; } ;

/* Variables and functions */
 int ACRF ; 
 int elp_debug ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	int stat;

	stat = FUNC0(dev->base_addr);
	FUNC3("%s: transmit timed out, lost %s?\n", dev->name,
		   (stat & ACRF) ? "interrupt" : "command");
	if (elp_debug >= 1)
		FUNC2("%s: status %#02x\n", dev->name, stat);
	dev->trans_start = jiffies;
	dev->stats.tx_dropped++;
	FUNC1(dev);
}