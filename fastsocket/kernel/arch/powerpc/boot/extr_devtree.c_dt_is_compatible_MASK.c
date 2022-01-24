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
 int /*<<< orphan*/  MAX_PROP_LEN ; 
 int FUNC0 (void*,char*,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ prop_buf ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*) ; 
 scalar_t__ FUNC2 (char*,int) ; 

int FUNC3(void *node, const char *compat)
{
	char *buf = (char *)prop_buf;
	int len, pos;

	len = FUNC0(node, "compatible", buf, MAX_PROP_LEN);
	if (len < 0)
		return 0;

	for (pos = 0; pos < len; pos++) {
		if (!FUNC1(buf + pos, compat))
			return 1;

		pos += FUNC2(&buf[pos], len - pos);
	}

	return 0;
}