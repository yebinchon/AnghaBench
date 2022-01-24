#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_2__ {int generic_bulk_ctrl_endpoint; } ;
struct dvb_usb_device {int /*<<< orphan*/  udev; TYPE_1__ props; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int const,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int const,int*,int const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct dvb_usb_device *d)
{
	int       ep = d->props.generic_bulk_ctrl_endpoint;
	const int timeout = 100;
	const int junk_len = 32;
	u8        *junk;
	int       rd_count;

	/* Discard remaining data in video pipe */
	junk = FUNC1(junk_len, GFP_KERNEL);
	if (!junk)
		return;
	while (1) {
		if (FUNC2(d->udev,
			FUNC3(d->udev, ep),
			junk, junk_len, &rd_count, timeout) < 0)
			break;
		if (!rd_count)
			break;
	}
	FUNC0(junk);
}