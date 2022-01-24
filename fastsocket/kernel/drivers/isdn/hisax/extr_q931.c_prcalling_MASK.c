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
typedef  int u_char ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 

__attribute__((used)) static int
FUNC2(char *dest, u_char * p)
{
	int l;
	char *dp = dest;

	p++;
	l = *p++ - 1;
	dp += FUNC1(dp, "    octet 3 ");
	dp += FUNC0(dp, *p, 8, 8);
	*dp++ = '\n';
	if (!(*p & 0x80)) {
		dp += FUNC1(dp, "    octet 3a ");
		dp += FUNC0(dp, *++p, 8, 8);
		*dp++ = '\n';
		l--;
	};
	p++;

	dp += FUNC1(dp, "    number digits ");
	while (l--)
		*dp++ = *p++;
	*dp++ = '\n';
	return (dp - dest);
}