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
struct net_device {int mtu; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  BDX_DRV_NAME ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENTER ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int ETH_ZLEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 scalar_t__ FUNC4 (struct net_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *ndev, int new_mtu)
{
	ENTER;

	if (new_mtu == ndev->mtu)
		FUNC1(0);

	/* enforce minimum frame size */
	if (new_mtu < ETH_ZLEN) {
		FUNC0("%s: %s mtu %d is less then minimal %d\n",
		    BDX_DRV_NAME, ndev->name, new_mtu, ETH_ZLEN);
		FUNC1(-EINVAL);
	}

	ndev->mtu = new_mtu;
	if (FUNC4(ndev)) {
		FUNC2(ndev);
		FUNC3(ndev);
	}
	FUNC1(0);
}