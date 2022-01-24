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
typedef  union ib_gid {int dummy; } ib_gid ;
typedef  int /*<<< orphan*/  u8 ;
struct net_device {int dummy; } ;
struct mlx4_ib_qp {int port; } ;
struct TYPE_2__ {struct net_device** netdevs; int /*<<< orphan*/  lock; } ;
struct mlx4_ib_dev {TYPE_1__ iboe; } ;
struct in6_addr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct in6_addr*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct mlx4_ib_dev *mdev, struct mlx4_ib_qp *mqp,
		   union ib_gid *gid)
{
	u8 mac[6];
	struct net_device *ndev;
	int ret = 0;

	if (!mqp->port)
		return 0;

	FUNC6(&mdev->iboe.lock);
	ndev = mdev->iboe.netdevs[mqp->port - 1];
	if (ndev)
		FUNC0(ndev);
	FUNC7(&mdev->iboe.lock);

	if (ndev) {
		FUNC3((struct in6_addr *)gid, mac);
		FUNC4();
		FUNC1(mdev->iboe.netdevs[mqp->port - 1], mac, 6, 0);
		ret = 1;
		FUNC5();
		FUNC2(ndev);
	}

	return ret;
}