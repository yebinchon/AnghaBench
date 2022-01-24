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
 int /*<<< orphan*/  FUNC0 (void*,char const*,unsigned int) ; 

unsigned FUNC1(void *insnbuf, unsigned len,
			      const char *start, const char *end)
{
	unsigned insn_len = end - start;

	if (insn_len > len || start == NULL)
		insn_len = len;
	else
		FUNC0(insnbuf, start, insn_len);

	return insn_len;
}