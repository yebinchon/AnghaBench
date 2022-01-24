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
typedef  int /*<<< orphan*/  uint8_t ;
struct mtd_info {int dummy; } ;

/* Variables and functions */
 unsigned short RD_RDY ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int WB_FULL ; 
 unsigned short FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned short) ; 
 int /*<<< orphan*/  FUNC6 () ; 

__attribute__((used)) static void FUNC7(struct mtd_info *mtd, uint8_t *buf, int len)
{
	int i;
	unsigned short val;

	/*
	 * Data reads are requested by first writing to NFC_DATA_RD
	 * and then reading back from NFC_READ.
	 */
	for (i = 0; i < len; i++) {
		while (FUNC3() & WB_FULL)
			FUNC6();

		/* Contents do not matter */
		FUNC4(0x0000);
		FUNC0();

		while ((FUNC1() & RD_RDY) != RD_RDY)
			FUNC6();

		buf[i] = FUNC2();

		val = FUNC1();
		val |= RD_RDY;
		FUNC5(val);
		FUNC0();
	}
}