#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scatter_walk {int offset; TYPE_1__* sg; } ;
struct page {int dummy; } ;
struct TYPE_3__ {int offset; int length; } ;

/* Variables and functions */
 int PAGE_MASK ; 
 int PAGE_SHIFT ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct page*) ; 
 int /*<<< orphan*/  FUNC1 (struct page*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (struct scatter_walk*,int /*<<< orphan*/ ) ; 
 struct page* FUNC4 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC5(struct scatter_walk *walk, int out,
				 unsigned int more)
{
	if (out) {
		struct page *page;

		page = FUNC4(walk->sg) + ((walk->offset - 1) >> PAGE_SHIFT);
		if (!FUNC0(page))
			FUNC1(page);
	}

	if (more) {
		walk->offset += PAGE_SIZE - 1;
		walk->offset &= PAGE_MASK;
		if (walk->offset >= walk->sg->offset + walk->sg->length)
			FUNC3(walk, FUNC2(walk->sg));
	}
}