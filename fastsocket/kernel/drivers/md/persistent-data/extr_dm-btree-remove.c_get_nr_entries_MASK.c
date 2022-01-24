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
typedef  int /*<<< orphan*/  uint32_t ;
struct dm_transaction_manager {int dummy; } ;
struct dm_block {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  nr_entries; } ;
struct btree_node {TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  btree_node_validator ; 
 struct btree_node* FUNC0 (struct dm_block*) ; 
 int FUNC1 (struct dm_transaction_manager*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dm_block**) ; 
 int FUNC2 (struct dm_transaction_manager*,struct dm_block*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct dm_transaction_manager *tm,
			  dm_block_t b, uint32_t *result)
{
	int r;
	struct dm_block *block;
	struct btree_node *n;

	r = FUNC1(tm, b, &btree_node_validator, &block);
	if (r)
		return r;

	n = FUNC0(block);
	*result = FUNC3(n->header.nr_entries);

	return FUNC2(tm, block);
}