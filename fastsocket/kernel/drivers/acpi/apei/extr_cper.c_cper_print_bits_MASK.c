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
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int FUNC1 (char*,int,char*,char const*,...) ; 
 int FUNC2 (char const*) ; 

void FUNC3(const char *pfx, unsigned int bits,
		     const char *strs[], unsigned int strs_size)
{
	int i, len = 0;
	const char *str;
	char buf[84];

	for (i = 0; i < strs_size; i++) {
		if (!(bits & (1U << i)))
			continue;
		str = strs[i];
		if (!str)
			continue;
		if (len && len + FUNC2(str) + 2 > 80) {
			FUNC0("%s\n", buf);
			len = 0;
		}
		if (!len)
			len = FUNC1(buf, sizeof(buf), "%s%s", pfx, str);
		else
			len += FUNC1(buf+len, sizeof(buf)-len, ", %s", str);
	}
	if (len)
		FUNC0("%s\n", buf);
}