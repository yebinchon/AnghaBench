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
struct netvsc_device {int /*<<< orphan*/  extension; } ;
struct hv_device {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 struct netvsc_device* FUNC0 (struct hv_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

int FUNC2(struct hv_device *dev)
{
	struct netvsc_device *net_device = FUNC0(dev);

	if (!net_device)
		return -EINVAL;

	return FUNC1(net_device->extension);
}