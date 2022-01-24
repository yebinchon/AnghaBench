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
struct xpc_fifo_head_uv {int /*<<< orphan*/  lock; int /*<<< orphan*/  n_entries; struct xpc_fifo_entry_uv* last; struct xpc_fifo_entry_uv* first; } ;
struct xpc_fifo_entry_uv {struct xpc_fifo_entry_uv* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void
FUNC2(struct xpc_fifo_head_uv *head,
		      struct xpc_fifo_entry_uv *last)
{
	unsigned long irq_flags;

	last->next = NULL;
	FUNC0(&head->lock, irq_flags);
	if (head->last != NULL)
		head->last->next = last;
	else
		head->first = last;
	head->last = last;
	head->n_entries++;
	FUNC1(&head->lock, irq_flags);
}