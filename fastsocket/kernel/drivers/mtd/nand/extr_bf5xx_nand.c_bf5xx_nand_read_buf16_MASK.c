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
typedef  int /*<<< orphan*/  u16 ;
struct mtd_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 

__attribute__((used)) static void FUNC3(struct mtd_info *mtd, uint8_t *buf, int len)
{
	int i;
	u16 *p = (u16 *) buf;
	len >>= 1;

	/*
	 * Data reads are requested by first writing to NFC_DATA_RD
	 * and then reading back from NFC_READ.
	 */
	FUNC2(0x5555);

	FUNC0();

	for (i = 0; i < len; i++)
		p[i] = FUNC1();
}