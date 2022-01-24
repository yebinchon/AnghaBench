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
struct shadow_spine {int dummy; } ;
struct dm_btree_value_type {int dummy; } ;
struct dm_btree_info {int dummy; } ;
struct child {int dummy; } ;
struct btree_node {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dm_btree_info*,struct btree_node*,struct child*,struct child*) ; 
 struct btree_node* FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct dm_btree_info*,struct child*) ; 
 int FUNC3 (struct dm_btree_info*,struct dm_btree_value_type*,struct btree_node*,unsigned int,struct child*) ; 
 int /*<<< orphan*/  FUNC4 (struct shadow_spine*) ; 

__attribute__((used)) static int FUNC5(struct shadow_spine *s, struct dm_btree_info *info,
		      struct dm_btree_value_type *vt, unsigned left_index)
{
	int r;
	struct btree_node *parent;
	struct child left, right;

	parent = FUNC1(FUNC4(s));

	r = FUNC3(info, vt, parent, left_index, &left);
	if (r)
		return r;

	r = FUNC3(info, vt, parent, left_index + 1, &right);
	if (r) {
		FUNC2(info, &left);
		return r;
	}

	FUNC0(info, parent, &left, &right);

	r = FUNC2(info, &left);
	if (r) {
		FUNC2(info, &right);
		return r;
	}

	return FUNC2(info, &right);
}