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
struct hid_usage {int dummy; } ;
struct hid_field {int dummy; } ;
struct hid_driver {int (* event ) (struct hid_device*,struct hid_field*,struct hid_usage*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  name; } ;
struct hid_device {int claimed; int /*<<< orphan*/  (* hiddev_hid_event ) (struct hid_device*,struct hid_field*,struct hid_usage*,int /*<<< orphan*/ ) ;struct hid_driver* driver; } ;
typedef  int /*<<< orphan*/  __s32 ;

/* Variables and functions */
 int HID_CLAIMED_HIDDEV ; 
 int HID_CLAIMED_INPUT ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct hid_device*,struct hid_usage*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct hid_device*,struct hid_usage*) ; 
 int /*<<< orphan*/  FUNC3 (struct hid_device*,struct hid_field*,struct hid_usage*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct hid_device*,struct hid_field*,struct hid_usage*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct hid_device*,struct hid_field*,struct hid_usage*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct hid_device *hid, struct hid_field *field,
		struct hid_usage *usage, __s32 value, int interrupt)
{
	struct hid_driver *hdrv = hid->driver;
	int ret;

	FUNC1(hid, usage, value);

	if (hdrv && hdrv->event && FUNC2(hid, usage)) {
		ret = hdrv->event(hid, field, usage, value);
		if (ret != 0) {
			if (ret < 0)
				FUNC0("%s's event failed with %d\n",
						hdrv->name, ret);
			return;
		}
	}

	if (hid->claimed & HID_CLAIMED_INPUT)
		FUNC3(hid, field, usage, value);
	if (hid->claimed & HID_CLAIMED_HIDDEV && interrupt && hid->hiddev_hid_event)
		hid->hiddev_hid_event(hid, field, usage, value);
}