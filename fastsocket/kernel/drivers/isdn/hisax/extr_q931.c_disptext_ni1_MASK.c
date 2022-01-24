#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u_char ;
struct TYPE_2__ {int nr; char* descr; } ;

/* Variables and functions */
 int DTAGSIZE ; 
 TYPE_1__* dtaglist ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 

__attribute__((used)) static int
FUNC1(char *dest, u_char * p)
{
	char *dp = dest;
	int l, tag, len, i;

	p++;
	l = *p++ - 1;
	if (*p++ != 0x80) {
		dp += FUNC0(dp, "    Unknown display type\n");
		return (dp - dest);
	}
	/* Iterate over all tag,length,text fields */
	while (l > 0) {
		tag = *p++;
		len = *p++;
		l -= len + 2;
		/* Don't space or skip */
		if ((tag == 0x80) || (tag == 0x81)) p++;
		else {
			for (i = 0; i < DTAGSIZE; i++)
				if (tag == dtaglist[i].nr)
					break;

			/* When not found, give appropriate msg */
			if (i != DTAGSIZE) {
				dp += FUNC0(dp, "    %s: ", dtaglist[i].descr);
				while (len--)
					*dp++ = *p++;
			} else {
				dp += FUNC0(dp, "    (unknown display tag %2x): ", tag);
				while (len--)
					*dp++ = *p++;
			}
			dp += FUNC0(dp, "\n");
                }
	}
	return (dp - dest);
}