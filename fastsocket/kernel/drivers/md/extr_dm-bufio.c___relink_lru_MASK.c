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
struct dm_bufio_client {int /*<<< orphan*/ * lru; int /*<<< orphan*/ * n_buffers; } ;
struct dm_buffer {size_t list_mode; int /*<<< orphan*/  lru_list; struct dm_bufio_client* c; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(struct dm_buffer *b, int dirty)
{
	struct dm_bufio_client *c = b->c;

	FUNC0(!c->n_buffers[b->list_mode]);

	c->n_buffers[b->list_mode]--;
	c->n_buffers[dirty]++;
	b->list_mode = dirty;
	FUNC1(&b->lru_list, &c->lru[dirty]);
}