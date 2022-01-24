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
 int /*<<< orphan*/  FUNC0 (char*,...) ; 

__attribute__((used)) static void FUNC1(unsigned char *read, unsigned char *written, int start,
		       int len)
{
	int i = 0, j1, j2;
	char *diff;

	FUNC0("Offset       Read                          Written\n");
	while (i < len) {
		FUNC0("0x%08x: ", start + i);
		diff = "   ";
		for (j1 = 0; j1 < 8 && i + j1 < len; j1++) {
			FUNC0(" %02x", read[start + i + j1]);
			if (read[start + i + j1] != written[start + i + j1])
				diff = "***";
		}

		while (j1 < 8) {
			FUNC0(" ");
			j1 += 1;
		}

		FUNC0("  %s ", diff);

		for (j2 = 0; j2 < 8 && i + j2 < len; j2++)
			FUNC0(" %02x", written[start + i + j2]);
		FUNC0("\n");
		i += 8;
	}
}