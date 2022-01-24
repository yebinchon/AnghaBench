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
struct net_device {int dummy; } ;
struct ixpdev_priv {int /*<<< orphan*/  channel; int /*<<< orphan*/  napi; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_IXP2000_THDA0 ; 
 int /*<<< orphan*/  IXP2000_IRQ_THD_ENABLE_CLEAR_A_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nds ; 
 int /*<<< orphan*/  nds_open ; 
 struct ixpdev_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct net_device *dev)
{
	struct ixpdev_priv *ip = FUNC3(dev);

	FUNC4(dev);
	FUNC2(&ip->napi);
	FUNC5(ip->channel, 0);

	if (!--nds_open) {
		FUNC1(IXP2000_IRQ_THD_ENABLE_CLEAR_A_0, 0xffff);
		FUNC0(IRQ_IXP2000_THDA0, nds);
	}

	return 0;
}