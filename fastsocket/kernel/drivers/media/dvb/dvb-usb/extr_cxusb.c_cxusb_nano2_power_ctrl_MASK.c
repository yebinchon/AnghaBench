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
struct dvb_usb_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dvb_usb_device*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct dvb_usb_device*,int) ; 

__attribute__((used)) static int FUNC2(struct dvb_usb_device *d, int onoff)
{
	int rc = 0;

	rc = FUNC1(d, onoff);
	if (!onoff)
		FUNC0(d, 0);

	return rc;
}