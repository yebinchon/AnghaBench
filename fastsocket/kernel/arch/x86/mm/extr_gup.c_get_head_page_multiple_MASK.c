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
struct page {int /*<<< orphan*/  _count; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 struct page* FUNC2 (struct page*) ; 
 scalar_t__ FUNC3 (struct page*) ; 

__attribute__((used)) static inline void FUNC4(struct page *page, int nr)
{
	FUNC0(page != FUNC2(page));
	FUNC0(FUNC3(page) == 0);
	FUNC1(nr, &page->_count);
}