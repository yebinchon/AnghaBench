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
struct usb_device_id {int /*<<< orphan*/  member_0; } ;
struct sn9c102_device {int dummy; } ;

/* Variables and functions */
 int ENODEV ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct sn9c102_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct sn9c102_device*,struct usb_device_id const*) ; 
 int /*<<< orphan*/  tas5130d1b ; 

int FUNC3(struct sn9c102_device* cam)
{
	const struct usb_device_id tas5130d1b_id_table[] = {
		{ FUNC0(0x0c45, 0x6024), },
		{ FUNC0(0x0c45, 0x6025), },
		{ FUNC0(0x0c45, 0x60aa), },
		{ }
	};

	/* Sensor detection is based on USB pid/vid */
	if (!FUNC2(cam, tas5130d1b_id_table))
		return -ENODEV;

	FUNC1(cam, &tas5130d1b);

	return 0;
}