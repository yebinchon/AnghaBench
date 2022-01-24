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
typedef  int u8 ;
struct usb_device {int dummy; } ;
struct dvb_usb_device_properties {int dummy; } ;
struct dvb_usb_device_description {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FW_CONFIG ; 
 int FUNC0 (struct usb_device*,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 

__attribute__((used)) static int FUNC2(struct usb_device *udev,
				 struct dvb_usb_device_properties *props,
				 struct dvb_usb_device_description **desc,
				 int *cold)
{
	int ret;
	u8 reply;
	ret = FUNC0(udev, FW_CONFIG, &reply);
	if (ret)
		return ret;
	FUNC1("result of FW_CONFIG in identify state %d\n", reply);
	if (reply == 0x01)
		*cold = 1;
	else if (reply == 0x02)
		*cold = 0;
	else
		return -EIO;
	FUNC1("Identify state cold = %d\n", *cold);
	return 0;
}