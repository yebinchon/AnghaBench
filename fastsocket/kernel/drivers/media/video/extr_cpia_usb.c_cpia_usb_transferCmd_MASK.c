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
struct usb_cpia {struct usb_device* dev; } ;

/* Variables and functions */
 int DATA_IN ; 
 int DATA_OUT ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EINVAL ; 
 int FUNC1 (struct usb_device*,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_device*,int*,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int) ; 

__attribute__((used)) static int FUNC4(void *privdata, u8 *command, u8 *data)
{
	int err = 0;
	int databytes;
	struct usb_cpia *ucpia = (struct usb_cpia *)privdata;
	struct usb_device *udev = ucpia->dev;

	if (!udev) {
		FUNC0("Internal driver error: udev is NULL\n");
		return -EINVAL;
	}

	if (!command) {
		FUNC0("Internal driver error: command is NULL\n");
		return -EINVAL;
	}

	databytes = (((int)command[7])<<8) | command[6];

	if (command[0] == DATA_IN) {
		u8 buffer[8];

		if (!data) {
			FUNC0("Internal driver error: data is NULL\n");
			return -EINVAL;
		}

		err = FUNC1(udev, command, buffer, 8);
		if (err < 0)
			return err;

		FUNC3(data, buffer, databytes);
	} else if(command[0] == DATA_OUT)
		FUNC2(udev, command, data, databytes);
	else {
		FUNC0("Unexpected first byte of command: %x\n", command[0]);
		err = -EINVAL;
	}

	return 0;
}