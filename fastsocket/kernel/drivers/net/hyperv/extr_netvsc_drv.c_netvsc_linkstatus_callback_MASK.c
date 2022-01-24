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
struct netvsc_device {struct net_device* ndev; } ;
struct net_device_context {int /*<<< orphan*/  dwork; } ;
struct net_device {int dummy; } ;
struct hv_device {int dummy; } ;

/* Variables and functions */
 struct netvsc_device* FUNC0 (struct hv_device*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*,char*) ; 
 struct net_device_context* FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC7(struct hv_device *device_obj,
				       unsigned int status)
{
	struct net_device *net;
	struct net_device_context *ndev_ctx;
	struct netvsc_device *net_device;

	net_device = FUNC0(device_obj);
	net = net_device->ndev;

	if (!net) {
		FUNC2(net, "got link status but net device "
				"not initialized yet\n");
		return;
	}

	if (status == 1) {
		FUNC5(net);
		ndev_ctx = FUNC3(net);
		FUNC6(&ndev_ctx->dwork, 0);
		FUNC6(&ndev_ctx->dwork, FUNC1(20));
	} else {
		FUNC4(net);
	}
}