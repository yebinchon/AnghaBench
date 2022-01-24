#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct shadow_spine {int dummy; } ;
struct TYPE_5__ {int /*<<< orphan*/  context; int /*<<< orphan*/  (* dec ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct dm_btree_info {int levels; TYPE_2__ value_type; } ;
struct TYPE_4__ {int /*<<< orphan*/  nr_entries; } ;
struct btree_node {TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct btree_node*,int) ; 
 struct btree_node* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct shadow_spine*) ; 
 int /*<<< orphan*/  FUNC4 (struct shadow_spine*,struct dm_btree_info*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_2__ le64_type ; 
 int FUNC6 (struct shadow_spine*,struct dm_btree_info*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int*) ; 
 int /*<<< orphan*/  FUNC7 (struct shadow_spine*) ; 
 int /*<<< orphan*/  FUNC8 (struct shadow_spine*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct btree_node*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct btree_node*,int) ; 

int FUNC12(struct dm_btree_info *info, dm_block_t root,
		    uint64_t *keys, dm_block_t *new_root)
{
	unsigned level, last_level = info->levels - 1;
	int index = 0, r = 0;
	struct shadow_spine spine;
	struct btree_node *n;

	FUNC4(&spine, info);
	for (level = 0; level < info->levels; level++) {
		r = FUNC6(&spine, info,
			       (level == last_level ?
				&info->value_type : &le64_type),
			       root, keys[level], (unsigned *)&index);
		if (r < 0)
			break;

		n = FUNC2(FUNC7(&spine));
		if (level != last_level) {
			root = FUNC10(n, index);
			continue;
		}

		FUNC0(index < 0 || index >= FUNC5(n->header.nr_entries));

		if (info->value_type.dec)
			info->value_type.dec(info->value_type.context,
					     FUNC11(n, index));

		FUNC1(n, index);
	}

	*new_root = FUNC8(&spine);
	FUNC3(&spine);

	return r;
}