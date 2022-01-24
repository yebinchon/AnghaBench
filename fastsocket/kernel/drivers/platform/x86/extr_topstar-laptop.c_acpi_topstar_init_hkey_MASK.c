#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct tps_key_entry {int /*<<< orphan*/  keycode; scalar_t__ code; } ;
struct topstar_hkey {TYPE_2__* inputdev; } ;
struct TYPE_5__ {int /*<<< orphan*/  bustype; } ;
struct TYPE_6__ {char* name; char* phys; int /*<<< orphan*/  keybit; int /*<<< orphan*/  evbit; int /*<<< orphan*/  setkeycode; int /*<<< orphan*/  getkeycode; TYPE_1__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_HOST ; 
 int ENODEV ; 
 int /*<<< orphan*/  EV_KEY ; 
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 scalar_t__ FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  topstar_getkeycode ; 
 struct tps_key_entry* topstar_keymap ; 
 int /*<<< orphan*/  topstar_setkeycode ; 

__attribute__((used)) static int FUNC5(struct topstar_hkey *hkey)
{
	struct tps_key_entry *key;

	hkey->inputdev = FUNC0();
	if (!hkey->inputdev) {
		FUNC3("Unable to allocate input device\n");
		return -ENODEV;
	}
	hkey->inputdev->name = "Topstar Laptop extra buttons";
	hkey->inputdev->phys = "topstar/input0";
	hkey->inputdev->id.bustype = BUS_HOST;
	hkey->inputdev->getkeycode = topstar_getkeycode;
	hkey->inputdev->setkeycode = topstar_setkeycode;
	for (key = topstar_keymap; key->code; key++) {
		FUNC4(EV_KEY, hkey->inputdev->evbit);
		FUNC4(key->keycode, hkey->inputdev->keybit);
	}
	if (FUNC2(hkey->inputdev)) {
		FUNC3("Unable to register input device\n");
		FUNC1(hkey->inputdev);
		return -ENODEV;
	}

	return 0;
}