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
 int ATKD_LCD_OFF ; 
 int ATKD_LCD_ON ; 
 int /*<<< orphan*/  FB_BLANK_POWERDOWN ; 
 int /*<<< orphan*/  FB_BLANK_UNBLANK ; 
#define  KE_KEY 128 
 int /*<<< orphan*/  LCD_ON ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int,scalar_t__) ; 
 struct key_entry* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 TYPE_2__* hotk ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC8(struct acpi_device *device, u32 event)
{
	static struct key_entry *key;
	u16 count;

	/* TODO Find a better way to handle events count. */
	if (!hotk)
		return;

	/*
	 * We need to tell the backlight device when the backlight power is
	 * switched
	 */
	if (event == ATKD_LCD_ON) {
		FUNC7(NULL, 1, LCD_ON);
		FUNC6(FB_BLANK_UNBLANK);
	} else if (event == ATKD_LCD_OFF) {
		FUNC7(NULL, 0, LCD_ON);
		FUNC6(FB_BLANK_POWERDOWN);
	}

	count = hotk->event_count[event % 128]++;
	FUNC1(hotk->device, event, count);
	FUNC0(hotk->device->pnp.device_class,
					FUNC3(&hotk->device->dev), event,
					count);

	if (hotk->inputdev) {
		key = FUNC2(event);
		if (!key)
			return ;

		switch (key->type) {
		case KE_KEY:
			FUNC4(hotk->inputdev, key->keycode, 1);
			FUNC5(hotk->inputdev);
			FUNC4(hotk->inputdev, key->keycode, 0);
			FUNC5(hotk->inputdev);
			break;
		}
	}
}