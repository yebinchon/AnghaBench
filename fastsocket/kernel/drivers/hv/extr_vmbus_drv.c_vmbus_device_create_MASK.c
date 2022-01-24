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
typedef  int /*<<< orphan*/  uuid_le ;
struct vmbus_channel {int dummy; } ;
struct hv_device {int /*<<< orphan*/  dev_instance; int /*<<< orphan*/  dev_type; struct vmbus_channel* channel; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct hv_device* FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

struct hv_device *FUNC3(uuid_le *type,
					    uuid_le *instance,
					    struct vmbus_channel *channel)
{
	struct hv_device *child_device_obj;

	child_device_obj = FUNC0(sizeof(struct hv_device), GFP_KERNEL);
	if (!child_device_obj) {
		FUNC2("Unable to allocate device object for child device\n");
		return NULL;
	}

	child_device_obj->channel = channel;
	FUNC1(&child_device_obj->dev_type, type, sizeof(uuid_le));
	FUNC1(&child_device_obj->dev_instance, instance,
	       sizeof(uuid_le));


	return child_device_obj;
}