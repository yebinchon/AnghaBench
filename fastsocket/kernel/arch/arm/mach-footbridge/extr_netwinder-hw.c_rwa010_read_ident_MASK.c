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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static inline void FUNC6(void)
{
	unsigned char si[9];
	int i, j;

	FUNC0(3, 0);
	FUNC0(0, 128);

	FUNC4(1, 0x279);

	FUNC3(1);

	FUNC1("Identifier: ");
	for (i = 0; i < 9; i++) {
		si[i] = 0;
		for (j = 0; j < 8; j++) {
			int bit;
			FUNC5(250);
			FUNC2(0x203);
			FUNC5(250);
			bit = FUNC2(0x203);
			FUNC1("%02X ", bit);
			bit = (bit == 0xaa) ? 1 : 0;
			si[i] |= bit << j;
		}
		FUNC1("(%02X) ", si[i]);
	}
	FUNC1("\n");
}