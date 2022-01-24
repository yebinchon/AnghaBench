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
struct lguest {TYPE_1__* pgdirs; } ;
struct TYPE_2__ {scalar_t__ pgdir; } ;

/* Variables and functions */
 unsigned int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (long) ; 
 int /*<<< orphan*/  FUNC2 (struct lguest*) ; 

void FUNC3(struct lguest *lg)
{
	unsigned int i;

	/* Throw away all page table pages. */
	FUNC2(lg);
	/* Now free the top levels: free_page() can handle 0 just fine. */
	for (i = 0; i < FUNC0(lg->pgdirs); i++)
		FUNC1((long)lg->pgdirs[i].pgdir);
}