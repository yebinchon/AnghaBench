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
 int /*<<< orphan*/  MM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned long,unsigned long,struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (struct page*) ; 

__attribute__((used)) static void FUNC3(struct page **p, size_t num_pages,
				   int dirty)
{
	size_t i;

	for (i = 0; i < num_pages; i++) {
		FUNC0(MM, "%lu/%lu put_page %p\n", (unsigned long) i,
			   (unsigned long) num_pages, p[i]);
		if (dirty)
			FUNC2(p[i]);
		FUNC1(p[i]);
	}
}