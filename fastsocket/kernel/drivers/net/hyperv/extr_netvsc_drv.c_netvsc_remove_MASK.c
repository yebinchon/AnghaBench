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
struct netvsc_device {int start_remove; struct net_device* ndev; } ;
struct net_device_context {int /*<<< orphan*/  work; int /*<<< orphan*/  dwork; } ;
struct net_device {int dummy; } ;
struct hv_device {int /*<<< orphan*/  device; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 struct netvsc_device* FUNC4 (struct hv_device*) ; 
 struct net_device_context* FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct net_device*) ; 

__attribute__((used)) static int FUNC9(struct hv_device *dev)
{
	struct net_device *net;
	struct net_device_context *ndev_ctx;
	struct netvsc_device *net_device;

	net_device = FUNC4(dev);
	net = net_device->ndev;

	if (net == NULL) {
		FUNC2(&dev->device, "No net device to remove\n");
		return 0;
	}

	net_device->start_remove = true;

	ndev_ctx = FUNC5(net);
	FUNC0(&ndev_ctx->dwork);
	FUNC1(&ndev_ctx->work);

	/* Stop outbound asap */
	FUNC6(net);

	FUNC8(net);

	/*
	 * Call to the vsc driver to let it know that the device is being
	 * removed
	 */
	FUNC7(dev);

	FUNC3(net);
	return 0;
}