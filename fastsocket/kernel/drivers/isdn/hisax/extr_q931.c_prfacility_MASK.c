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
typedef  int /*<<< orphan*/  u_char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,...) ; 

__attribute__((used)) static int
FUNC2(char *dest, u_char * p)
{
	char *dp = dest;
	int l, l2;

	p++;
	l = *p++;
	dp += FUNC1(dp, "    octet 3 ");
	dp += FUNC0(dp, *p++, 8, 8);
	dp += FUNC1(dp, "\n");
	l -= 1;

	while (l > 0) {
		dp += FUNC1(dp, "   octet 4 ");
		dp += FUNC0(dp, *p++, 8, 8);
		dp += FUNC1(dp, "\n");
		dp += FUNC1(dp, "   octet 5 %d\n", l2 = *p++ & 0x7f);
		l -= 2;
		dp += FUNC1(dp, "   contents ");
		while (l2--) {
			dp += FUNC1(dp, "%2x ", *p++);
			l--;
		}
		dp += FUNC1(dp, "\n");
	}

	return (dp - dest);
}