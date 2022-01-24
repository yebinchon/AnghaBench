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
struct v4l2_queryctrl {int /*<<< orphan*/  type; } ;
struct usb_usbvision {int dummy; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct usb_usbvision*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_queryctrl*) ; 
 int /*<<< orphan*/  core ; 
 int /*<<< orphan*/  queryctrl ; 
 struct usb_usbvision* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
			    struct v4l2_queryctrl *ctrl)
{
	struct usb_usbvision *usbvision = FUNC1(file);

	FUNC0(usbvision, core, queryctrl, ctrl);

	if (!ctrl->type)
		return -EINVAL;

	return 0;
}