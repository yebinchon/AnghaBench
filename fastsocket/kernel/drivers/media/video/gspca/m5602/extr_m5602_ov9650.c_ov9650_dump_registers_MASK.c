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
typedef  int u8 ;
struct sd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct sd*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sd*,int,int*,int) ; 

__attribute__((used)) static void FUNC3(struct sd *sd)
{
	int address;
	FUNC0("Dumping the ov9650 register state");
	for (address = 0; address < 0xa9; address++) {
		u8 value;
		FUNC1(sd, address, &value, 1);
		FUNC0("register 0x%x contains 0x%x",
		     address, value);
	}

	FUNC0("ov9650 register state dump complete");

	FUNC0("Probing for which registers that are read/write");
	for (address = 0; address < 0xff; address++) {
		u8 old_value, ctrl_value;
		u8 test_value[2] = {0xff, 0xff};

		FUNC1(sd, address, &old_value, 1);
		FUNC2(sd, address, test_value, 1);
		FUNC1(sd, address, &ctrl_value, 1);

		if (ctrl_value == test_value[0])
			FUNC0("register 0x%x is writeable", address);
		else
			FUNC0("register 0x%x is read only", address);

		/* Restore original value */
		FUNC2(sd, address, &old_value, 1);
	}
}