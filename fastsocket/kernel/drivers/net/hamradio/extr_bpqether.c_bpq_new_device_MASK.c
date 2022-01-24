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
struct net_device {int /*<<< orphan*/  name; } ;
struct bpqdev {int /*<<< orphan*/  bpq_list; int /*<<< orphan*/  acpt_addr; int /*<<< orphan*/  dest_addr; struct net_device* axdev; struct net_device* ethdev; } ;
typedef  int /*<<< orphan*/  bpq_eth_addr ;

/* Variables and functions */
 int ENOMEM ; 
 struct net_device* FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bcast_addr ; 
 int /*<<< orphan*/  bpq_devices ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  bpq_setup ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct bpqdev* FUNC8 (struct net_device*) ; 
 int FUNC9 (struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct net_device *edev)
{
	int err;
	struct net_device *ndev;
	struct bpqdev *bpq;

	ndev = FUNC0(sizeof(struct bpqdev), "bpq%d",
			   bpq_setup);
	if (!ndev)
		return -ENOMEM;

		
	bpq = FUNC8(ndev);
	FUNC3(edev);
	bpq->ethdev = edev;
	bpq->axdev = ndev;

	FUNC7(bpq->dest_addr, bcast_addr, sizeof(bpq_eth_addr));
	FUNC7(bpq->acpt_addr, bcast_addr, sizeof(bpq_eth_addr));

	err = FUNC2(ndev, ndev->name);
	if (err < 0) 
		goto error;

	err = FUNC9(ndev);
	if (err)
		goto error;
	FUNC1(ndev);

	/* List protected by RTNL */
	FUNC6(&bpq->bpq_list, &bpq_devices);
	return 0;

 error:
	FUNC4(edev);
	FUNC5(ndev);
	return err;
	
}