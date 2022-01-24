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
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 

__attribute__((used)) static int
FUNC1(char *dest, u_char * p)
{
	char *dp = dest;
	char ch = ' ';
	int l, octet = 3;

	p++;
	l = *p++;
	/* Iterate over all octets in the * display-information element */
	dp += FUNC0(dp, "   \"");
	while (l--) {
		dp += FUNC0(dp, "%c", *p++);

		/* last octet in group? */
		if (*p & 0x80) {
			octet++;
			ch = ' ';
		} else if (ch == ' ')
			ch = 'a';

		else
			ch++;
	}
	*dp++ = '\"';
	*dp++ = '\n';
	return (dp - dest);
}