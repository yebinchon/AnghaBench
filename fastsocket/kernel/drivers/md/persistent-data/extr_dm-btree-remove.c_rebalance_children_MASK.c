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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct shadow_spine {int dummy; } ;
struct dm_btree_value_type {int dummy; } ;
struct dm_btree_info {int /*<<< orphan*/  tm; } ;
struct dm_block {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  nr_entries; } ;
struct btree_node {TYPE_1__ header; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int ENODATA ; 
 int /*<<< orphan*/  btree_node_validator ; 
 struct btree_node* FUNC0 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_block*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dm_block**) ; 
 int FUNC6 (int /*<<< orphan*/ ,struct dm_block*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 int FUNC9 (struct btree_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct btree_node*,struct btree_node*,int /*<<< orphan*/ ) ; 
 int FUNC11 (struct shadow_spine*,struct dm_btree_info*,struct dm_btree_value_type*,int) ; 
 int FUNC12 (struct shadow_spine*,struct dm_btree_info*,struct dm_btree_value_type*,int) ; 
 struct dm_block* FUNC13 (struct shadow_spine*) ; 
 int /*<<< orphan*/  FUNC14 (struct btree_node*,int) ; 

__attribute__((used)) static int FUNC15(struct shadow_spine *s,
			      struct dm_btree_info *info,
			      struct dm_btree_value_type *vt, uint64_t key)
{
	int i, r, has_left_sibling, has_right_sibling;
	uint32_t child_entries;
	struct btree_node *n;

	n = FUNC0(FUNC13(s));

	if (FUNC8(n->header.nr_entries) == 1) {
		struct dm_block *child;
		dm_block_t b = FUNC14(n, 0);

		r = FUNC5(info->tm, b, &btree_node_validator, &child);
		if (r)
			return r;

		FUNC10(n, FUNC0(child),
		       FUNC2(FUNC4(info->tm)));
		r = FUNC6(info->tm, child);
		if (r)
			return r;

		FUNC3(info->tm, FUNC1(child));
		return 0;
	}

	i = FUNC9(n, key);
	if (i < 0)
		return -ENODATA;

	r = FUNC7(info->tm, FUNC14(n, i), &child_entries);
	if (r)
		return r;

	has_left_sibling = i > 0;
	has_right_sibling = i < (FUNC8(n->header.nr_entries) - 1);

	if (!has_left_sibling)
		r = FUNC11(s, info, vt, i);

	else if (!has_right_sibling)
		r = FUNC11(s, info, vt, i - 1);

	else
		r = FUNC12(s, info, vt, i - 1);

	return r;
}