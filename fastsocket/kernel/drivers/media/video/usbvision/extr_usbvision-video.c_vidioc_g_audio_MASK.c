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
struct v4l2_audio {int /*<<< orphan*/  name; } ;
struct usb_usbvision {scalar_t__ radio; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 struct usb_usbvision* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv, struct v4l2_audio *a)
{
	struct usb_usbvision *usbvision = FUNC1(file);

	if (usbvision->radio)
		FUNC0(a->name, "Radio");
	else
		FUNC0(a->name, "TV");

	return 0;
}