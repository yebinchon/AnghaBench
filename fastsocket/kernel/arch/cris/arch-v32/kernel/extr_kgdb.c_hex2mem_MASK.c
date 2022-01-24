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
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned char*
FUNC1(unsigned char *mem, char *buf, int count)
{
	int i;
	unsigned char ch;
	for (i = 0; i < count; i++) {
		ch = FUNC0 (*buf++) << 4;
		ch = ch + FUNC0 (*buf++);
		*mem++ = ch;
	}
	return mem;
}