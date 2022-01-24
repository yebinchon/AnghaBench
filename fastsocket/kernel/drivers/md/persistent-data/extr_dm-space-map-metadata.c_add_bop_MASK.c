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
struct sm_metadata {int /*<<< orphan*/  uncommitted; } ;
typedef  enum block_op_type { ____Placeholder_block_op_type } block_op_type ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int ENOMEM ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct sm_metadata *smm, enum block_op_type type, dm_block_t b)
{
	int r = FUNC1(&smm->uncommitted, type, b);

	if (r) {
		FUNC0("too many recursive allocations");
		return -ENOMEM;
	}

	return 0;
}