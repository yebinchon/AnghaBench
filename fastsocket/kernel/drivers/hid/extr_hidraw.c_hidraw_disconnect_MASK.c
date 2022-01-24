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
struct hidraw {size_t minor; int /*<<< orphan*/  wait; scalar_t__ open; scalar_t__ exist; } ;
struct hid_device {TYPE_1__* ll_driver; struct hidraw* hidraw; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* close ) (struct hid_device*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hidraw_class ; 
 int /*<<< orphan*/  hidraw_major ; 
 int /*<<< orphan*/ ** hidraw_table ; 
 int /*<<< orphan*/  FUNC2 (struct hidraw*) ; 
 int /*<<< orphan*/  minors_lock ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

void FUNC7(struct hid_device *hid)
{
	struct hidraw *hidraw = hid->hidraw;

	FUNC3(&minors_lock);
	hidraw->exist = 0;

	FUNC1(hidraw_class, FUNC0(hidraw_major, hidraw->minor));

	hidraw_table[hidraw->minor] = NULL;

	if (hidraw->open) {
		hid->ll_driver->close(hid);
		FUNC6(&hidraw->wait);
	} else {
		FUNC2(hidraw);
	}
	FUNC4(&minors_lock);
}