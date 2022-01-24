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
struct ro_spine {int count; struct dm_block** nodes; } ;
struct dm_block {int dummy; } ;
struct btree_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct btree_node* FUNC1 (struct dm_block*) ; 

struct btree_node *FUNC2(struct ro_spine *s)
{
	struct dm_block *block;

	FUNC0(!s->count);
	block = s->nodes[s->count - 1];

	return FUNC1(block);
}