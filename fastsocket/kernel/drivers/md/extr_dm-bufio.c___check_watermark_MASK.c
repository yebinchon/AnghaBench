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
struct list_head {int dummy; } ;
struct dm_bufio_client {unsigned long* n_buffers; } ;
struct dm_buffer {int dummy; } ;

/* Variables and functions */
 size_t LIST_CLEAN ; 
 size_t LIST_DIRTY ; 
 int /*<<< orphan*/  FUNC0 (struct dm_buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_bufio_client*,unsigned long*,unsigned long*) ; 
 struct dm_buffer* FUNC2 (struct dm_bufio_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_bufio_client*,int,struct list_head*) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static void FUNC5(struct dm_bufio_client *c,
			      struct list_head *write_list)
{
	unsigned long threshold_buffers, limit_buffers;

	FUNC1(c, &threshold_buffers, &limit_buffers);

	while (c->n_buffers[LIST_CLEAN] + c->n_buffers[LIST_DIRTY] >
	       limit_buffers) {

		struct dm_buffer *b = FUNC2(c);

		if (!b)
			return;

		FUNC0(b);
		FUNC4();
	}

	if (c->n_buffers[LIST_DIRTY] > threshold_buffers)
		FUNC3(c, 1, write_list);
}