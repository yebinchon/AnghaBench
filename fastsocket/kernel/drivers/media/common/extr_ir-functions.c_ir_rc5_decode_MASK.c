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
typedef  unsigned int u32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,unsigned int,...) ; 

__attribute__((used)) static u32 FUNC5(unsigned int code)
{
	unsigned int org_code = code;
	unsigned int pair;
	unsigned int rc5 = 0;
	int i;

	for (i = 0; i < 14; ++i) {
		pair = code & 0x3;
		code >>= 2;

		rc5 <<= 1;
		switch (pair) {
		case 0:
		case 2:
			break;
		case 1:
			rc5 |= 1;
			break;
		case 3:
			FUNC4(1, "ir-common: ir_rc5_decode(%x) bad code\n", org_code);
			return 0;
		}
	}
	FUNC4(1, "ir-common: code=%x, rc5=%x, start=%x, toggle=%x, address=%x, "
		"instr=%x\n", rc5, org_code, FUNC2(rc5),
		FUNC3(rc5), FUNC0(rc5), FUNC1(rc5));
	return rc5;
}