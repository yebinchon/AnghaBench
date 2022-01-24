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
struct ro_spine {int count; int /*<<< orphan*/ * nodes; int /*<<< orphan*/  info; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC2(struct ro_spine *s, dm_block_t new_child)
{
	int r;

	if (s->count == 2) {
		r = FUNC1(s->info, s->nodes[0]);
		if (r < 0)
			return r;
		s->nodes[0] = s->nodes[1];
		s->count--;
	}

	r = FUNC0(s->info, new_child, s->nodes + s->count);
	if (!r)
		s->count++;

	return r;
}