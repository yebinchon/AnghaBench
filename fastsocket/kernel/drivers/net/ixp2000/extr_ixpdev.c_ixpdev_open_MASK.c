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
 int /*<<< orphan*/  IRQF_SHARED ; 
 int /*<<< orphan*/  IRQ_IXP2000_THDA0 ; 
 int /*<<< orphan*/  IXP2000_IRQ_THD_ENABLE_SET_A_0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ixpdev_interrupt ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  nds ; 
 int /*<<< orphan*/  nds_open ; 
 struct ixpdev_priv* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev)
{
	struct ixpdev_priv *ip = FUNC3(dev);
	int err;

	FUNC2(&ip->napi);
	if (!nds_open++) {
		err = FUNC5(IRQ_IXP2000_THDA0, ixpdev_interrupt,
					IRQF_SHARED, "ixp2000_eth", nds);
		if (err) {
			nds_open--;
			FUNC1(&ip->napi);
			return err;
		}

		FUNC0(IXP2000_IRQ_THD_ENABLE_SET_A_0, 0xffff);
	}

	FUNC6(ip->channel, 1);
	FUNC4(dev);

	return 0;
}