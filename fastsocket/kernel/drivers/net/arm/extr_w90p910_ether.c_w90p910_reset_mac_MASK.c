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
struct w90p910_ether {int cur_tx; int finish_tx; int cur_rx; } ;
struct net_device {void* trans_start; } ;

/* Variables and functions */
 void* jiffies ; 
 struct w90p910_ether* FUNC0 (struct net_device*) ; 
 scalar_t__ FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC12 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct net_device*) ; 

__attribute__((used)) static void FUNC15(struct net_device *dev)
{
	struct w90p910_ether *ether = FUNC0(dev);

	FUNC8(dev, 0);
	FUNC7(dev, 0);
	FUNC12(dev);
	FUNC10(dev);

	if (!FUNC1(dev))
		FUNC2(dev);

	FUNC9(dev);

	dev->trans_start = jiffies;
	ether->cur_tx = 0x0;
	ether->finish_tx = 0x0;
	ether->cur_rx = 0x0;

	FUNC11(dev);
	FUNC4(dev);
	FUNC5(dev);
	FUNC6(dev);
	FUNC8(dev, 1);
	FUNC7(dev, 1);
	FUNC14(dev);
	FUNC13(dev);

	dev->trans_start = jiffies;

	if (FUNC1(dev))
		FUNC3(dev);
}