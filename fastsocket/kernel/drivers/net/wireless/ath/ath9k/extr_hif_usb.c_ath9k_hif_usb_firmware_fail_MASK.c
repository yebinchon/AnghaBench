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
struct hif_device_usb {int /*<<< orphan*/  fw_done; TYPE_1__* udev; } ;
struct device {struct device* parent; } ;
struct TYPE_2__ {struct device dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (struct device*) ; 

__attribute__((used)) static void FUNC4(struct hif_device_usb *hif_dev)
{
	struct device *dev = &hif_dev->udev->dev;
	struct device *parent = dev->parent;

	FUNC0(&hif_dev->fw_done);

	if (parent)
		FUNC1(parent);

	FUNC2(dev);

	if (parent)
		FUNC3(parent);
}