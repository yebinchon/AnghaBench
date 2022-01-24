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
typedef  int /*<<< orphan*/  u16 ;
struct dvb_usb_device {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct dvb_usb_device*,int /*<<< orphan*/ ,int*) ; 
 int FUNC1 (struct dvb_usb_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int,int,int) ; 
 int* regmask ; 

int FUNC3(struct dvb_usb_device *d, u16 reg, u8 pos,
			       u8 len, u8 value)
{
	u8 temp, mask;
	int ret;
	FUNC2("write bits %x %x %x value %x\n", reg, pos, len, value);
	if (pos == 0 && len == 8)
		return FUNC1(d, reg, value);
	ret = FUNC0(d, reg, &temp);
	if (ret)
		return ret;
	mask = regmask[len - 1] << pos;
	temp = (temp & ~mask) | ((value << pos) & mask);
	return FUNC1(d, reg, temp);

}