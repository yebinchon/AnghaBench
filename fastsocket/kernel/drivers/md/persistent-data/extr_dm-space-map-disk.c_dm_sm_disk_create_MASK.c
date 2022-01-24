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
struct dm_space_map {int dummy; } ;
struct sm_disk {struct dm_space_map sm; int /*<<< orphan*/  ll; scalar_t__ nr_allocated_this_transaction; scalar_t__ begin; } ;
struct dm_transaction_manager {int dummy; } ;
typedef  int /*<<< orphan*/  dm_block_t ;

/* Variables and functions */
 int ENOMEM ; 
 struct dm_space_map* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (struct sm_disk*) ; 
 struct sm_disk* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_space_map*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ops ; 
 int FUNC4 (struct dm_space_map*) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,struct dm_transaction_manager*) ; 

struct dm_space_map *FUNC7(struct dm_transaction_manager *tm,
				       dm_block_t nr_blocks)
{
	int r;
	struct sm_disk *smd;

	smd = FUNC2(sizeof(*smd), GFP_KERNEL);
	if (!smd)
		return FUNC0(-ENOMEM);

	smd->begin = 0;
	smd->nr_allocated_this_transaction = 0;
	FUNC3(&smd->sm, &ops, sizeof(smd->sm));

	r = FUNC6(&smd->ll, tm);
	if (r)
		goto bad;

	r = FUNC5(&smd->ll, nr_blocks);
	if (r)
		goto bad;

	r = FUNC4(&smd->sm);
	if (r)
		goto bad;

	return &smd->sm;

bad:
	FUNC1(smd);
	return FUNC0(r);
}