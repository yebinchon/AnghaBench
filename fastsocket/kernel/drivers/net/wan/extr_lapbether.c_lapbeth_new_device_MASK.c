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
struct lapbethdev {int /*<<< orphan*/  node; struct net_device* ethdev; struct net_device* axdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int EIO ; 
 int ENOMEM ; 
 struct net_device* FUNC1 (int,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct net_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct lapbethdev*) ; 
 int /*<<< orphan*/  lapbeth_devices ; 
 int /*<<< orphan*/  lapbeth_setup ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 struct lapbethdev* FUNC8 (struct net_device*) ; 
 scalar_t__ FUNC9 (struct net_device*) ; 

__attribute__((used)) static int FUNC10(struct net_device *dev)
{
	struct net_device *ndev;
	struct lapbethdev *lapbeth;
	int rc = -ENOMEM;

	FUNC0();

	ndev = FUNC1(sizeof(*lapbeth), "lapb%d", 
			   lapbeth_setup);
	if (!ndev)
		goto out;

	lapbeth = FUNC8(ndev);
	lapbeth->axdev = ndev;

	FUNC3(dev);
	lapbeth->ethdev = dev;

	rc = FUNC2(ndev, ndev->name);
	if (rc < 0) 
		goto fail;

	rc = -EIO;
	if (FUNC9(ndev))
		goto fail;

	FUNC7(&lapbeth->node, &lapbeth_devices);
	rc = 0;
out:
	return rc;
fail:
	FUNC4(dev);
	FUNC5(ndev);
	FUNC6(lapbeth);
	goto out;
}