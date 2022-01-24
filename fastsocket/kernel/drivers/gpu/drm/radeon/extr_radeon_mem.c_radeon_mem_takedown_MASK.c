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
struct mem_block {struct mem_block* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mem_block*) ; 

void FUNC1(struct mem_block **heap)
{
	struct mem_block *p;

	if (!*heap)
		return;

	for (p = (*heap)->next; p != *heap;) {
		struct mem_block *q = p;
		p = p->next;
		FUNC0(q);
	}

	FUNC0(*heap);
	*heap = NULL;
}