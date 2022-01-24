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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (struct usb_device*,int*,int,int) ; 
 int FUNC2 (struct usb_device*,int*,int,int) ; 

__attribute__((used)) static void FUNC3(struct usb_device *dev)
{
	int ret = 0, len_in;
	u8 data[512] = {0};

	data[0] = 0x0a;
	len_in = 1;
	FUNC0("FRM Firmware Cold Reset");
	ret |= FUNC2(dev, data , len_in, 1); /*Cold Resetting*/
	ret |= FUNC1(dev, data, len_in, 1);

	return;
}