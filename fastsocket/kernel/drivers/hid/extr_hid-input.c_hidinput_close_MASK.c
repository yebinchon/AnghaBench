#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct input_dev {int dummy; } ;
struct hid_device {TYPE_1__* ll_driver; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* close ) (struct hid_device*) ;} ;

/* Variables and functions */
 struct hid_device* FUNC0 (struct input_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*) ; 

__attribute__((used)) static void FUNC2(struct input_dev *dev)
{
	struct hid_device *hid = FUNC0(dev);

	hid->ll_driver->close(hid);
}