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

__attribute__((used)) static void*
FUNC0(const void *s, int c, int n)
{
	const unsigned char uc = c;
	const unsigned char *su;

	for (su = s; 0 < n; ++su, --n)
		if (*su == uc)
			return (void *)su;
	return NULL;
}