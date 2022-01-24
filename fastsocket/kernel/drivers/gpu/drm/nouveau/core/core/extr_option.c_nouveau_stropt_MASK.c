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
 int FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,int) ; 

const char *
FUNC2(const char *optstr, const char *opt, int *arglen)
{
	while (optstr && *optstr != '\0') {
		int len = FUNC0(optstr, ",=");
		switch (optstr[len]) {
		case '=':
			if (!FUNC1(optstr, opt, len)) {
				optstr += len + 1;
				*arglen = FUNC0(optstr, ",=");
				return *arglen ? optstr : NULL;
			}
			optstr++;
			break;
		case ',':
			optstr++;
			break;
		default:
			break;
		}
		optstr += len;
	}

	return NULL;
}