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
struct serio {int dummy; } ;

/* Variables and functions */
 unsigned char I8042_STR_AUXDATA ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (unsigned char,unsigned char,struct serio*) ; 
 int /*<<< orphan*/  i8042_suppress_kbd_ack ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(unsigned char data, unsigned char str,
			 struct serio *serio)
{
	if (FUNC2(i8042_suppress_kbd_ack)) {
		if ((~str & I8042_STR_AUXDATA) &&
		    (data == 0xfa || data == 0xfe)) {
			i8042_suppress_kbd_ack--;
			FUNC0("Extra keyboard ACK - filtered out\n");
			return true;
		}
	}

	if (&i8042_platform_filter && FUNC1(data, str, serio)) {
		FUNC0("Filtered out by platfrom filter\n");
		return true;
	}

	return false;
}