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
struct net_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  owner; int /*<<< orphan*/  (* close ) (struct net_device*) ;} ;
struct arcnet_local {TYPE_1__ hw; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NORXcmd ; 
 int /*<<< orphan*/  NOTXcmd ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 struct arcnet_local* FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 

int FUNC7(struct net_device *dev)
{
	struct arcnet_local *lp = FUNC4(dev);

	FUNC5(dev);

	/* flush TX and disable RX */
	FUNC1(0);
	FUNC0(NOTXcmd);	/* stop transmit */
	FUNC0(NORXcmd);	/* disable receive */
	FUNC2(1);

	/* shut down the card */
	lp->hw.close(dev);
	FUNC3(lp->hw.owner);
	return 0;
}