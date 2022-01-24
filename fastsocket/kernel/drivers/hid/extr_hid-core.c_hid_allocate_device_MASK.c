#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/ * bus; int /*<<< orphan*/  release; } ;
struct hid_device {TYPE_2__ dev; int /*<<< orphan*/  debug_list; int /*<<< orphan*/  debug_wait; TYPE_1__* report_enum; int /*<<< orphan*/  collection_size; int /*<<< orphan*/ * collection; } ;
struct hid_collection {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  report_list; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct hid_device* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HID_DEFAULT_NUM_COLLECTIONS ; 
 unsigned int HID_REPORT_TYPES ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  hid_bus_type ; 
 int /*<<< orphan*/  hid_device_release ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 struct hid_device* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*) ; 

struct hid_device *FUNC7(void)
{
	struct hid_device *hdev;
	unsigned int i;
	int ret = -ENOMEM;

	hdev = FUNC5(sizeof(*hdev), GFP_KERNEL);
	if (hdev == NULL)
		return FUNC0(ret);

	FUNC2(&hdev->dev);
	hdev->dev.release = hid_device_release;
	hdev->dev.bus = &hid_bus_type;

	hdev->collection = FUNC4(HID_DEFAULT_NUM_COLLECTIONS,
			sizeof(struct hid_collection), GFP_KERNEL);
	if (hdev->collection == NULL)
		goto err;
	hdev->collection_size = HID_DEFAULT_NUM_COLLECTIONS;

	for (i = 0; i < HID_REPORT_TYPES; i++)
		FUNC1(&hdev->report_enum[i].report_list);

	FUNC3(&hdev->debug_wait);
	FUNC1(&hdev->debug_list);

	return hdev;
err:
	FUNC6(&hdev->dev);
	return FUNC0(ret);
}