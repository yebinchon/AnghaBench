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
 int S5K83A_PAGE_MAP ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct sd*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sd*,int,int*,int) ; 

__attribute__((used)) static void FUNC3(struct sd *sd)
{
	int address;
	u8 page, old_page;
	FUNC1(sd, S5K83A_PAGE_MAP, &old_page, 1);

	for (page = 0; page < 16; page++) {
		FUNC2(sd, S5K83A_PAGE_MAP, &page, 1);
		FUNC0("Dumping the s5k83a register state for page 0x%x", page);
		for (address = 0; address <= 0xff; address++) {
			u8 val = 0;
			FUNC1(sd, address, &val, 1);
			FUNC0("register 0x%x contains 0x%x",
			     address, val);
		}
	}
	FUNC0("s5k83a register state dump complete");

	for (page = 0; page < 16; page++) {
		FUNC2(sd, S5K83A_PAGE_MAP, &page, 1);
		FUNC0("Probing for which registers that are read/write "
				"for page 0x%x", page);
		for (address = 0; address <= 0xff; address++) {
			u8 old_val, ctrl_val, test_val = 0xff;

			FUNC1(sd, address, &old_val, 1);
			FUNC2(sd, address, &test_val, 1);
			FUNC1(sd, address, &ctrl_val, 1);

			if (ctrl_val == test_val)
				FUNC0("register 0x%x is writeable", address);
			else
				FUNC0("register 0x%x is read only", address);

			/* Restore original val */
			FUNC2(sd, address, &old_val, 1);
		}
	}
	FUNC0("Read/write register probing complete");
	FUNC2(sd, S5K83A_PAGE_MAP, &old_page, 1);
}