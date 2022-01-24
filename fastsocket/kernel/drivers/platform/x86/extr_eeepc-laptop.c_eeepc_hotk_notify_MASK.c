#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  scalar_t__ u16 ;
struct key_entry {int type; int /*<<< orphan*/  keycode; } ;
struct acpi_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  device_class; } ;
struct TYPE_6__ {int /*<<< orphan*/  dev; TYPE_1__ pnp; } ;
struct TYPE_5__ {scalar_t__ inputdev; TYPE_3__* device; int /*<<< orphan*/ * event_count; } ;

/* Variables and functions */
 int ACPI_MAX_SYS_NOTIFY ; 
 int ENODEV ; 
#define  KE_KEY 128 
 int NOTIFY_BRN_MAX ; 
 int NOTIFY_BRN_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 struct key_entry* FUNC3 (int) ; 
 TYPE_2__* ehotk ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct acpi_device *device, u32 event)
{
	static struct key_entry *key;
	u16 count;
	int brn = -ENODEV;

	if (!ehotk)
		return;
	if (event > ACPI_MAX_SYS_NOTIFY)
		return;
	if (event >= NOTIFY_BRN_MIN && event <= NOTIFY_BRN_MAX)
		brn = FUNC6();
	count = ehotk->event_count[event % 128]++;
	FUNC1(ehotk->device, event, count);
	FUNC0(ehotk->device->pnp.device_class,
					FUNC2(&ehotk->device->dev), event,
					count);
	if (ehotk->inputdev) {
		if (brn != -ENODEV) {
			/* brightness-change events need special
			 * handling for conversion to key events
			 */
			if (brn < 0)
				brn = event;
			else
				brn += NOTIFY_BRN_MIN;
			if (event < brn)
				event = NOTIFY_BRN_MIN; /* brightness down */
			else if (event > brn)
				event = NOTIFY_BRN_MIN + 2; /* ... up */
			else
				event = NOTIFY_BRN_MIN + 1; /* ... unchanged */
		}
		key = FUNC3(event);
		if (key) {
			switch (key->type) {
			case KE_KEY:
				FUNC4(ehotk->inputdev, key->keycode,
						 1);
				FUNC5(ehotk->inputdev);
				FUNC4(ehotk->inputdev, key->keycode,
						 0);
				FUNC5(ehotk->inputdev);
				break;
			}
		}
	}
}