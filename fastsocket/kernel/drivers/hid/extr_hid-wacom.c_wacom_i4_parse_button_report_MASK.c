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
struct wacom_data {int butstate; } ;
struct input_dev {int dummy; } ;
typedef  int __u16 ;

/* Variables and functions */
 int /*<<< orphan*/  ABS_MISC ; 
 int /*<<< orphan*/  BTN_0 ; 
 int /*<<< orphan*/  BTN_1 ; 
 int /*<<< orphan*/  BTN_2 ; 
 int /*<<< orphan*/  BTN_3 ; 
 int /*<<< orphan*/  BTN_4 ; 
 int /*<<< orphan*/  BTN_5 ; 
 int /*<<< orphan*/  BTN_6 ; 
 int /*<<< orphan*/  BTN_7 ; 
 int /*<<< orphan*/  BTN_8 ; 
 int /*<<< orphan*/  BTN_TOOL_FINGER ; 
 int /*<<< orphan*/  EV_MSC ; 
 int /*<<< orphan*/  MSC_SERIAL ; 
 int /*<<< orphan*/  PAD_DEVICE_ID ; 
 int /*<<< orphan*/  FUNC0 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct input_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct input_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct input_dev*) ; 

__attribute__((used)) static void FUNC4(struct wacom_data *wdata,
			struct input_dev *input, unsigned char *data)
{
	__u16 new_butstate;

	new_butstate = (data[3] << 1) | (data[2] & 0x01);
	if (new_butstate != wdata->butstate) {
		wdata->butstate = new_butstate;
		FUNC2(input, BTN_0, new_butstate & 0x001);
		FUNC2(input, BTN_1, new_butstate & 0x002);
		FUNC2(input, BTN_2, new_butstate & 0x004);
		FUNC2(input, BTN_3, new_butstate & 0x008);
		FUNC2(input, BTN_4, new_butstate & 0x010);
		FUNC2(input, BTN_5, new_butstate & 0x020);
		FUNC2(input, BTN_6, new_butstate & 0x040);
		FUNC2(input, BTN_7, new_butstate & 0x080);
		FUNC2(input, BTN_8, new_butstate & 0x100);
		FUNC2(input, BTN_TOOL_FINGER, 1);
		FUNC1(input, ABS_MISC, PAD_DEVICE_ID);
		FUNC0(input, EV_MSC, MSC_SERIAL, 0xffffffff);
		FUNC3(input);
	}
}