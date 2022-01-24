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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char) ; 

__attribute__((used)) static void FUNC2(void)
{
	unsigned char code = 0x6a, msb;
	int i;

	FUNC0(1);
	FUNC1(0x00);
	FUNC1(0x00);

	FUNC1(code);

	for (i = 1; i < 32; i++) {
		msb = ((code & 0x01) ^ ((code & 0x02) >> 1)) << 7;
		code = (code >> 1) | msb;
		FUNC1(code);
	}
}