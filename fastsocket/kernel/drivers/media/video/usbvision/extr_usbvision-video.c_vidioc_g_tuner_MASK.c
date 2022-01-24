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
struct v4l2_tuner {int /*<<< orphan*/  name; int /*<<< orphan*/  type; scalar_t__ index; } ;
struct usb_usbvision {scalar_t__ radio; int /*<<< orphan*/  have_tuner; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  V4L2_TUNER_RADIO ; 
 int /*<<< orphan*/  FUNC0 (struct usb_usbvision*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_tuner*) ; 
 int /*<<< orphan*/  g_tuner ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  tuner ; 
 struct usb_usbvision* FUNC2 (struct file*) ; 

__attribute__((used)) static int FUNC3(struct file *file, void *priv,
				struct v4l2_tuner *vt)
{
	struct usb_usbvision *usbvision = FUNC2(file);

	if (!usbvision->have_tuner || vt->index)	/* Only tuner 0 */
		return -EINVAL;
	if (usbvision->radio) {
		FUNC1(vt->name, "Radio");
		vt->type = V4L2_TUNER_RADIO;
	} else {
		FUNC1(vt->name, "Television");
	}
	/* Let clients fill in the remainder of this struct */
	FUNC0(usbvision, tuner, g_tuner, vt);

	return 0;
}