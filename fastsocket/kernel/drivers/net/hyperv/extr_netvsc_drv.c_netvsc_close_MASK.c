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
struct net_device_context {int /*<<< orphan*/  work; struct hv_device* device_ctx; } ;
struct net_device {int dummy; } ;
struct hv_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct net_device*,char*,int) ; 
 struct net_device_context* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int FUNC4 (struct hv_device*) ; 

__attribute__((used)) static int FUNC5(struct net_device *net)
{
	struct net_device_context *net_device_ctx = FUNC2(net);
	struct hv_device *device_obj = net_device_ctx->device_ctx;
	int ret;

	FUNC3(net);

	/* Make sure netvsc_set_multicast_list doesn't re-enable filter! */
	FUNC0(&net_device_ctx->work);
	ret = FUNC4(device_obj);
	if (ret != 0)
		FUNC1(net, "unable to close device (ret %d).\n", ret);

	return ret;
}