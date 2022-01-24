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
typedef  int u32 ;
struct tps_key_entry {int /*<<< orphan*/  keycode; } ;
struct topstar_hkey {int /*<<< orphan*/  inputdev; } ;
struct acpi_device {int dummy; } ;

/* Variables and functions */
 struct topstar_hkey* FUNC0 (struct acpi_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 struct tps_key_entry* FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct acpi_device *device, u32 event)
{
	struct tps_key_entry *key;
	static bool dup_evnt[2];
	bool *dup;
	struct topstar_hkey *hkey = FUNC0(device);

	/* 0x83 and 0x84 key events comes duplicated... */
	if (event == 0x83 || event == 0x84) {
		dup = &dup_evnt[event - 0x83];
		if (*dup) {
			*dup = false;
			return;
		}
		*dup = true;
	}

	/*
	 * 'G key' generate two event codes, convert to only
	 * one event/key code for now (3G switch?)
	 */
	if (event == 0x97)
		event = 0x96;

	key = FUNC4(event);
	if (key) {
		FUNC1(hkey->inputdev, key->keycode, 1);
		FUNC2(hkey->inputdev);
		FUNC1(hkey->inputdev, key->keycode, 0);
		FUNC2(hkey->inputdev);
		return;
	}

	/* Known non hotkey events don't handled or that we don't care yet */
	if (event == 0x8e || event == 0x8f || event == 0x90)
		return;

	FUNC3("unknown event = 0x%02x\n", event);
}