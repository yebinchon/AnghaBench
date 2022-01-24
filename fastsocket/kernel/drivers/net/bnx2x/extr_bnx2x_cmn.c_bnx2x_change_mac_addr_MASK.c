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
struct sockaddr {int /*<<< orphan*/  sa_data; } ;
struct net_device {int /*<<< orphan*/  addr_len; int /*<<< orphan*/  dev_addr; int /*<<< orphan*/  addr_assign_type; } ;
struct bnx2x {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EINVAL ; 
 scalar_t__ FUNC1 (struct bnx2x*) ; 
 scalar_t__ FUNC2 (struct bnx2x*) ; 
 int /*<<< orphan*/  NET_ADDR_RANDOM ; 
 int /*<<< orphan*/  FUNC3 (struct bnx2x*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct bnx2x*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct bnx2x* FUNC7 (struct net_device*) ; 
 scalar_t__ FUNC8 (struct net_device*) ; 

int FUNC9(struct net_device *dev, void *p)
{
	struct sockaddr *addr = p;
	struct bnx2x *bp = FUNC7(dev);
	int rc = 0;

	if (!FUNC3(bp, addr->sa_data)) {
		FUNC0("Requested MAC address is not valid\n");
		return -EINVAL;
	}

	if ((FUNC2(bp) || FUNC1(bp)) &&
	    !FUNC5(addr->sa_data)) {
		FUNC0("Can't configure non-zero address on iSCSI or FCoE functions in MF-SD mode\n");
		return -EINVAL;
	}

	if (FUNC8(dev))  {
		rc = FUNC4(bp, false);
		if (rc)
			return rc;
	}

	dev->addr_assign_type &= ~NET_ADDR_RANDOM;
	FUNC6(dev->dev_addr, addr->sa_data, dev->addr_len);

	if (FUNC8(dev))
		rc = FUNC4(bp, true);

	return rc;
}