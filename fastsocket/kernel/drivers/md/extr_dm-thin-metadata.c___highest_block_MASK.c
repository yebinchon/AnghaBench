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
struct dm_thin_device {int /*<<< orphan*/  id; struct dm_pool_metadata* pmd; } ;
struct dm_pool_metadata {int /*<<< orphan*/  bl_info; int /*<<< orphan*/  root; int /*<<< orphan*/  tl_info; } ;
typedef  int /*<<< orphan*/  dm_block_t ;
typedef  int /*<<< orphan*/  __le64 ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct dm_thin_device *td, dm_block_t *result)
{
	int r;
	__le64 value_le;
	dm_block_t thin_root;
	struct dm_pool_metadata *pmd = td->pmd;

	r = FUNC1(&pmd->tl_info, pmd->root, &td->id, &value_le);
	if (r)
		return r;

	thin_root = FUNC2(value_le);

	return FUNC0(&pmd->bl_info, thin_root, result);
}