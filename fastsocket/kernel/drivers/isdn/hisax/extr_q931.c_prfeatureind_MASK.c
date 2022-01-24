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
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static int
FUNC2(char *dest, u_char * p)
{
	char *dp = dest;

	p += 2; /* skip id, len */
	dp += FUNC1(dp, "    octet 3  ");
	dp += FUNC0(dp, *p, 8, 8);
	*dp++ = '\n';
	if (!(*p++ & 80)) {
		dp += FUNC1(dp, "    octet 4  ");
		dp += FUNC0(dp, *p++, 8, 8);
		*dp++ = '\n';
	}
	dp += FUNC1(dp, "    Status:  ");
	switch (*p) {
		case 0:
			dp += FUNC1(dp, "Idle");
			break;
		case 1:
			dp += FUNC1(dp, "Active");
			break;
		case 2:
			dp += FUNC1(dp, "Prompt");
			break;
		case 3:
			dp += FUNC1(dp, "Pending");
			break;
		default:
			dp += FUNC1(dp, "(Reserved)");
			break;
	}
	*dp++ = '\n';
	return (dp - dest);
}