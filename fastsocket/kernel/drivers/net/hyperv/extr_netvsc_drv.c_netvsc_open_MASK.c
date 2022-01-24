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
struct net_device_context {struct hv_device* device_ctx; } ;
struct net_device {int dummy; } ;
struct hv_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct net_device*,char*,int) ; 
 struct net_device_context* FUNC1 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct net_device*) ; 
 int FUNC3 (struct hv_device*) ; 

__attribute__((used)) static int FUNC4(struct net_device *net)
{
	struct net_device_context *net_device_ctx = FUNC1(net);
	struct hv_device *device_obj = net_device_ctx->device_ctx;
	int ret = 0;

	/* Open up the device */
	ret = FUNC3(device_obj);
	if (ret != 0) {
		FUNC0(net, "unable to open device (ret %d).\n", ret);
		return ret;
	}

	FUNC2(net);

	return ret;
}