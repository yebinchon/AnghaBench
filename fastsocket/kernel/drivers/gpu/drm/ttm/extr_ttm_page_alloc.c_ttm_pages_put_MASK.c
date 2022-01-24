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
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned int) ; 
 scalar_t__ FUNC2 (struct page**,unsigned int) ; 

__attribute__((used)) static void FUNC3(struct page *pages[], unsigned npages)
{
	unsigned i;
	if (FUNC2(pages, npages))
		FUNC1("Failed to set %d pages to wb!\n", npages);
	for (i = 0; i < npages; ++i)
		FUNC0(pages[i]);
}