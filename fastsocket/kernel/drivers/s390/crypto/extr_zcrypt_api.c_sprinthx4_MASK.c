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
 int FUNC0 (unsigned char*,char*,...) ; 

__attribute__((used)) static int FUNC1(unsigned char *title, unsigned char *outaddr,
		     unsigned int *array, unsigned int len)
{
	int hl, r;

	hl = FUNC0(outaddr, "\n%s\n", title);
	for (r = 0; r < len; r++) {
		if ((r % 8) == 0)
			hl += FUNC0(outaddr+hl, "    ");
		hl += FUNC0(outaddr+hl, "%08X ", array[r]);
		if ((r % 8) == 7)
			hl += FUNC0(outaddr+hl, "\n");
	}
	hl += FUNC0(outaddr+hl, "\n");
	return hl;
}