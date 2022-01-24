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
typedef  unsigned int uint32_t ;
struct dm_btree_info {int /*<<< orphan*/  tm; } ;
struct child {int /*<<< orphan*/  index; int /*<<< orphan*/  block; struct btree_node* n; } ;
struct TYPE_2__ {int /*<<< orphan*/  nr_entries; } ;
struct btree_node {int /*<<< orphan*/ * keys; TYPE_1__ header; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct btree_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (struct btree_node*,int /*<<< orphan*/ ) ; 
 unsigned int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (struct btree_node*) ; 
 int /*<<< orphan*/  FUNC7 (struct btree_node*,struct btree_node*,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (struct btree_node*,struct btree_node*,unsigned int) ; 

__attribute__((used)) static void FUNC9(struct dm_btree_info *info, struct btree_node *parent,
			 struct child *l, struct child *r)
{
	struct btree_node *left = l->n;
	struct btree_node *right = r->n;
	uint32_t nr_left = FUNC5(left->header.nr_entries);
	uint32_t nr_right = FUNC5(right->header.nr_entries);
	unsigned threshold = 2 * FUNC6(left) + 1;

	if (nr_left + nr_right < threshold) {
		/*
		 * Merge
		 */
		FUNC7(left, right, -nr_right);
		left->header.nr_entries = FUNC0(nr_left + nr_right);
		FUNC1(parent, r->index);

		/*
		 * We need to decrement the right block, but not it's
		 * children, since they're still referenced by left.
		 */
		FUNC3(info->tm, FUNC2(r->block));
	} else {
		/*
		 * Rebalance.
		 */
		unsigned target_left = (nr_left + nr_right) / 2;
		FUNC8(left, right, nr_left - target_left);
		*FUNC4(parent, r->index) = right->keys[0];
	}
}