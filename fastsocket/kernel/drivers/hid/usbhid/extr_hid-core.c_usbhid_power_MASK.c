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
struct hid_device {int dummy; } ;

/* Variables and functions */
#define  PM_HINT_FULLON 129 
#define  PM_HINT_NORMAL 128 
 int FUNC0 (struct hid_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*) ; 

__attribute__((used)) static int FUNC2(struct hid_device *hid, int lvl)
{
	int r = 0;

	switch (lvl) {
	case PM_HINT_FULLON:
		r = FUNC0(hid);
		break;
	case PM_HINT_NORMAL:
		FUNC1(hid);
		break;
	}
	return r;
}