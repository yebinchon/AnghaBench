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
struct TYPE_2__ {int /*<<< orphan*/  free; } ;
struct vmballoon {int /*<<< orphan*/  size; TYPE_1__ stats; } ;
struct page {int /*<<< orphan*/  lru; } ;

/* Variables and functions */
 int EIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct page*) ; 
 int /*<<< orphan*/  FUNC4 (struct vmballoon*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct vmballoon *b, struct page *page)
{
	if (!FUNC4(b, FUNC3(page)))
		return -EIO;

	FUNC2(&page->lru);

	/* deallocate page */
	FUNC1(page);
	FUNC0(b->stats.free);

	/* update balloon size */
	b->size--;

	return 0;
}