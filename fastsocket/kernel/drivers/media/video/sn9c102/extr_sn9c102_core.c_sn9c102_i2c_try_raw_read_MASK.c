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
struct sn9c102_sensor {scalar_t__ interface; int frequency; int /*<<< orphan*/  name; } ;
struct sn9c102_device {int* control_buffer; struct usb_device* usbdev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int) ; 
 int /*<<< orphan*/  SN9C102_CTRL_TIMEOUT ; 
 scalar_t__ SN9C102_I2C_2WIRES ; 
 int SN9C102_I2C_400KHZ ; 
 scalar_t__ FUNC2 (struct sn9c102_device*,struct sn9c102_sensor const*) ; 
 scalar_t__ FUNC3 (struct sn9c102_device*,struct sn9c102_sensor const*) ; 
 int FUNC4 (struct usb_device*,int /*<<< orphan*/ ,int,int,int,int /*<<< orphan*/ ,int*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct usb_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*,int /*<<< orphan*/ ) ; 

int
FUNC7(struct sn9c102_device* cam,
			 const struct sn9c102_sensor* sensor, u8 data0,
			 u8 data1, u8 n, u8 buffer[])
{
	struct usb_device* udev = cam->usbdev;
	u8* data = cam->control_buffer;
	int i = 0, err = 0, res;

	/* Write cycle */
	data[0] = ((sensor->interface == SN9C102_I2C_2WIRES) ? 0x80 : 0) |
		  ((sensor->frequency & SN9C102_I2C_400KHZ) ? 0x01 : 0) | 0x10;
	data[1] = data0; /* I2C slave id */
	data[2] = data1; /* address */
	data[7] = 0x10;
	res = FUNC4(udev, FUNC6(udev, 0), 0x08, 0x41,
			      0x08, 0, data, 8, SN9C102_CTRL_TIMEOUT);
	if (res < 0)
		err += res;

	err += FUNC3(cam, sensor);

	/* Read cycle - n bytes */
	data[0] = ((sensor->interface == SN9C102_I2C_2WIRES) ? 0x80 : 0) |
		  ((sensor->frequency & SN9C102_I2C_400KHZ) ? 0x01 : 0) |
		  (n << 4) | 0x02;
	data[1] = data0;
	data[7] = 0x10;
	res = FUNC4(udev, FUNC6(udev, 0), 0x08, 0x41,
			      0x08, 0, data, 8, SN9C102_CTRL_TIMEOUT);
	if (res < 0)
		err += res;

	err += FUNC3(cam, sensor);

	/* The first read byte will be placed in data[4] */
	res = FUNC4(udev, FUNC5(udev, 0), 0x00, 0xc1,
			      0x0a, 0, data, 5, SN9C102_CTRL_TIMEOUT);
	if (res < 0)
		err += res;

	err += FUNC2(cam, sensor);

	FUNC1("I2C read: address 0x%02X, first read byte: 0x%02X", data1,
	      data[4]);

	if (err) {
		FUNC0(3, "I2C read failed for %s image sensor", sensor->name);
		return -1;
	}

	if (buffer)
		for (i = 0; i < n && i < 5; i++)
			buffer[n-i-1] = data[4-i];

	return (int)data[4];
}