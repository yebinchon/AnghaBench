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
struct dm_btree_value_type {int dummy; } ;
struct dm_btree_info {int /*<<< orphan*/  tm; } ;
struct dm_block {int dummy; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  btree_node_validator ; 
 int /*<<< orphan*/  FUNC0 (struct dm_block*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct dm_block**,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dm_btree_value_type*) ; 

__attribute__((used)) static int FUNC3(struct dm_btree_info *info, dm_block_t orig,
	      struct dm_btree_value_type *vt,
	      struct dm_block **result)
{
	int r, inc;

	r = FUNC1(info->tm, orig, &btree_node_validator,
			       result, &inc);
	if (!r && inc)
		FUNC2(info->tm, FUNC0(*result), vt);

	return r;
}