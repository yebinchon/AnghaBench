#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct zd1201 {int /*<<< orphan*/  tx_urb; TYPE_1__* usb; } ;
struct TYPE_4__ {int /*<<< orphan*/  tx_errors; } ;
struct net_device {int /*<<< orphan*/  trans_start; TYPE_2__ stats; int /*<<< orphan*/  name; } ;
struct TYPE_3__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  jiffies ; 
 struct zd1201* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	struct zd1201 *zd = FUNC1(dev);

	if (!zd)
		return;
	FUNC0(&zd->usb->dev, "%s: TX timeout, shooting down urb\n",
	    dev->name);
	FUNC2(zd->tx_urb);
	dev->stats.tx_errors++;
	/* Restart the timeout to quiet the watchdog: */
	dev->trans_start = jiffies;
}