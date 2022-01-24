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
struct usb_interface {int dummy; } ;
struct usb_device {int dummy; } ;
struct device_attribute {int dummy; } ;
struct device {int dummy; } ;
struct ati_remote2 {unsigned long mode_mask; } ;
typedef  size_t ssize_t ;

/* Variables and functions */
 unsigned long ATI_REMOTE2_MAX_MODE_MASK ; 
 size_t EINVAL ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ,unsigned long*) ; 
 struct usb_device* FUNC1 (struct device*) ; 
 struct ati_remote2* FUNC2 (struct usb_interface*) ; 
 struct usb_interface* FUNC3 (struct usb_device*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC4(struct device *dev,
					   struct device_attribute *attr,
					   const char *buf, size_t count)
{
	struct usb_device *udev = FUNC1(dev);
	struct usb_interface *intf = FUNC3(udev, 0);
	struct ati_remote2 *ar2 = FUNC2(intf);
	unsigned long mask;

	if (FUNC0(buf, 0, &mask))
		return -EINVAL;

	if (mask & ~ATI_REMOTE2_MAX_MODE_MASK)
		return -EINVAL;

	ar2->mode_mask = mask;

	return count;
}