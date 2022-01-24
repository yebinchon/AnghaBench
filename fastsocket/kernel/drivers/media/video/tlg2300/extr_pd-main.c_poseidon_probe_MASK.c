#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct device {TYPE_1__* driver; } ;
struct usb_interface {struct device dev; } ;
struct usb_device_id {int dummy; } ;
struct usb_device {int /*<<< orphan*/  dev; } ;
struct TYPE_5__ {int /*<<< orphan*/  name; } ;
struct poseidon {int /*<<< orphan*/  pm_work; TYPE_3__* udev; int /*<<< orphan*/  device_list; TYPE_2__ v4l2_dev; int /*<<< orphan*/  lock; int /*<<< orphan*/  interface; int /*<<< orphan*/  kref; } ;
struct TYPE_6__ {int autosuspend_delay; scalar_t__ autosuspend_disabled; } ;
struct TYPE_4__ {char* name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int PM_SUSPEND_DELAY ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,int*) ; 
 char* FUNC3 (struct device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 struct poseidon* FUNC5 (struct usb_device*) ; 
 int /*<<< orphan*/  hibernation_resume ; 
 scalar_t__ FUNC6 (struct poseidon*) ; 
 struct usb_device* FUNC7 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 struct poseidon* FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct poseidon*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pd_device_list ; 
 int /*<<< orphan*/  FUNC13 (struct poseidon*) ; 
 int FUNC14 (struct poseidon*) ; 
 int /*<<< orphan*/  FUNC15 (struct poseidon*) ; 
 int /*<<< orphan*/  FUNC16 (struct poseidon*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (struct poseidon*,struct usb_device*) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int,char*,char*,char*) ; 
 TYPE_3__* FUNC20 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC21 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC22 (struct usb_interface*,struct poseidon*) ; 
 int FUNC23 (int /*<<< orphan*/ *,TYPE_2__*) ; 

__attribute__((used)) static int FUNC24(struct usb_interface *interface,
				const struct usb_device_id *id)
{
	struct usb_device *udev = FUNC7(interface);
	struct poseidon *pd = NULL;
	int ret = 0;
	int new_one = 0;

	/* download firmware */
	FUNC2(udev, &ret);
	if (ret)
		return 0;

	/* Do I recovery from the hibernate ? */
	pd = FUNC5(udev);
	if (!pd) {
		pd = FUNC9(sizeof(*pd), GFP_KERNEL);
		if (!pd)
			return -ENOMEM;
		FUNC8(&pd->kref);
		FUNC18(pd, udev);
		new_one = 1;
	}

	pd->udev	= FUNC20(udev);
	pd->interface	= FUNC21(interface);
	FUNC22(interface, pd);

	if (new_one) {
		struct device *dev = &interface->dev;

		FUNC11(pd);
		FUNC12(&pd->lock);

		/* register v4l2 device */
		FUNC19(pd->v4l2_dev.name, sizeof(pd->v4l2_dev.name), "%s %s",
			dev->driver->name, FUNC3(dev));
		ret = FUNC23(NULL, &pd->v4l2_dev);

		/* register devices in directory /dev */
		ret = FUNC14(pd);
		FUNC15(pd);
		FUNC16(pd);
		FUNC13(pd);

		FUNC0(&pd->device_list);
		FUNC10(&pd->device_list, &pd_device_list);
	}

	FUNC4(&udev->dev, 1);
#ifdef CONFIG_PM
	pd->udev->autosuspend_delay = HZ * PM_SUSPEND_DELAY;
	pd->udev->autosuspend_disabled = 0;

	if (in_hibernation(pd)) {
		INIT_WORK(&pd->pm_work, hibernation_resume);
		schedule_work(&pd->pm_work);
	}
#endif
	return 0;
}