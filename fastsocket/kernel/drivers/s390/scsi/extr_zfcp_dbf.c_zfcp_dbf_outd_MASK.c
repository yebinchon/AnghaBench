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
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 

__attribute__((used)) static void FUNC1(char **p, const char *label, char *buffer,
			  int buflen, int offset, int total_size)
{
	if (!offset)
		*p += FUNC0(*p, "%-24s  ", label);
	while (buflen--) {
		if (offset > 0) {
			if ((offset % 32) == 0)
				*p += FUNC0(*p, "\n%-24c  ", ' ');
			else if ((offset % 4) == 0)
				*p += FUNC0(*p, " ");
		}
		*p += FUNC0(*p, "%02x", *buffer++);
		if (++offset == total_size) {
			*p += FUNC0(*p, "\n");
			break;
		}
	}
	if (!total_size)
		*p += FUNC0(*p, "\n");
}