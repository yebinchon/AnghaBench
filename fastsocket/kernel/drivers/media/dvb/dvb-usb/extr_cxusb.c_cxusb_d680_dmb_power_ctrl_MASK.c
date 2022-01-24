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
typedef  int /*<<< orphan*/  u8 ;
struct dvb_usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CMD_DIGITAL ; 
 int /*<<< orphan*/  FUNC0 (struct dvb_usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC1 (struct dvb_usb_device*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct dvb_usb_device *d, int onoff)
{
	int ret;
	u8  b;
	ret = FUNC1(d, onoff);
	if (!onoff)
		return ret;

	FUNC2(128);
	FUNC0(d, CMD_DIGITAL, NULL, 0, &b, 1);
	FUNC2(100);
	return ret;
}