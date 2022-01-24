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
struct page {int dummy; } ;

/* Variables and functions */
 int PAGE_SIZE ; 
 char* FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static void
FUNC3(struct page *page)
{
	char temp[64];
	char *vaddr;
	int i;

	vaddr = FUNC0(page);

	for (i = 0; i < PAGE_SIZE; i += 128) {
		FUNC2(temp, &vaddr[i], 64);
		FUNC2(&vaddr[i], &vaddr[i + 64], 64);
		FUNC2(&vaddr[i + 64], temp, 64);
	}

	FUNC1(page);
}