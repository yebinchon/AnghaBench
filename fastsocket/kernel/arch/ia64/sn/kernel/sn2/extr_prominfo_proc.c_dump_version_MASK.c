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
typedef  int /*<<< orphan*/  banner ;

/* Variables and functions */
 scalar_t__ FIT_ENTRY_SAL_A ; 
 int FUNC0 (unsigned long) ; 
 int FUNC1 (unsigned long) ; 
 scalar_t__ FUNC2 (unsigned long) ; 
 scalar_t__ PAGE_SIZE ; 
 scalar_t__ FUNC3 (unsigned long,int,unsigned long*,char*,int) ; 
 scalar_t__ FUNC4 (char*,scalar_t__,char*,char*) ; 
 int FUNC5 (char*,char*,int,int) ; 

__attribute__((used)) static int
FUNC6(char *page, unsigned long nasid)
{
	unsigned long fentry[2];
	char banner[128];
	int index;
	int len;

	for (index = 0; ; index++) {
		if (FUNC3(nasid, index, fentry, banner,
				  sizeof(banner)))
			return 0;
		if (FUNC2(fentry[1]) == FIT_ENTRY_SAL_A)
			break;
	}

	len = FUNC5(page, "%x.%02x\n", FUNC0(fentry[1]),
		      FUNC1(fentry[1]));
	page += len;

	if (banner[0])
		len += FUNC4(page, PAGE_SIZE-len, "%s\n", banner);

	return len;
}