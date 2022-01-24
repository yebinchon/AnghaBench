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
struct hid_usage {int hid; } ;
struct hid_input {TYPE_1__* input; } ;
struct TYPE_2__ {int /*<<< orphan*/  evbit; } ;

/* Variables and functions */
 int /*<<< orphan*/  EV_REP ; 
 int HID_USAGE ; 
 int /*<<< orphan*/  KEY_BACK ; 
 int /*<<< orphan*/  KEY_CLOSE ; 
 int /*<<< orphan*/  KEY_FORWARD ; 
 int /*<<< orphan*/  KEY_PLAY ; 
 int /*<<< orphan*/  KEY_PLAYPAUSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct hid_input *hi, struct hid_usage *usage,
		unsigned long **bit, int *max)
{
	FUNC1(EV_REP, hi->input->evbit);
	switch (usage->hid & HID_USAGE) {
	case 0xfd08: FUNC0(KEY_FORWARD);	break;
	case 0xfd09: FUNC0(KEY_BACK);	break;
	case 0xfd0b: FUNC0(KEY_PLAYPAUSE);	break;
	case 0xfd0e: FUNC0(KEY_CLOSE);	break;
	case 0xfd0f: FUNC0(KEY_PLAY);	break;
	default:
		return 0;
	}
	return 1;
}