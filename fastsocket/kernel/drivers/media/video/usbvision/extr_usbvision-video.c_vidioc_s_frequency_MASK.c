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
struct v4l2_frequency {int /*<<< orphan*/  frequency; scalar_t__ tuner; } ;
struct usb_usbvision {int /*<<< orphan*/  freq; int /*<<< orphan*/  have_tuner; } ;
struct file {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (struct usb_usbvision*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_frequency*) ; 
 int /*<<< orphan*/  s_frequency ; 
 int /*<<< orphan*/  tuner ; 
 struct usb_usbvision* FUNC1 (struct file*) ; 

__attribute__((used)) static int FUNC2(struct file *file, void *priv,
				struct v4l2_frequency *freq)
{
	struct usb_usbvision *usbvision = FUNC1(file);

	/* Only no or one tuner for now */
	if (!usbvision->have_tuner || freq->tuner)
		return -EINVAL;

	usbvision->freq = freq->frequency;
	FUNC0(usbvision, tuner, s_frequency, freq);

	return 0;
}