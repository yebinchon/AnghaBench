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
 int /*<<< orphan*/  FUNC0 (char const*,...) ; 
 char* FUNC1 (unsigned char,unsigned char) ; 
 scalar_t__ FUNC2 (char const*,char*) ; 

void
FUNC3(unsigned char asc, unsigned char ascq)
{
        const char *extd_sense_fmt = FUNC1(asc, ascq);

	if (extd_sense_fmt) {
		if (FUNC2(extd_sense_fmt, "%x")) {
			FUNC0("Add. Sense: ");
			FUNC0(extd_sense_fmt, ascq);
		} else
			FUNC0("Add. Sense: %s", extd_sense_fmt);
	} else {
		if (asc >= 0x80)
			FUNC0("<<vendor>> ASC=0x%x ASCQ=0x%x", asc,
			       ascq);
		if (ascq >= 0x80)
			FUNC0("ASC=0x%x <<vendor>> ASCQ=0x%x", asc,
			       ascq);
		else
			FUNC0("ASC=0x%x ASCQ=0x%x", asc, ascq);
	}

	FUNC0("\n");
}