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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned long*) ; 
 scalar_t__ FUNC2 (unsigned long,int,unsigned long*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(char *page, unsigned long nasid)
{
	unsigned long fentry[2];
	int index;
	char *p;

	p = page;
	for (index=0;;index++) {
		FUNC0(index * 60 > PAGE_SIZE);
		if (FUNC2(nasid, index, fentry, NULL, 0))
			break;
		p += FUNC1(p, fentry);
	}

	return p - page;
}