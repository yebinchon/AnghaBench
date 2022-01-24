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
typedef  int /*<<< orphan*/  uint64_t ;
struct dm_thin_device {int open_count; int /*<<< orphan*/  list; } ;
struct dm_pool_metadata {int /*<<< orphan*/  root; int /*<<< orphan*/  tl_info; int /*<<< orphan*/  details_root; int /*<<< orphan*/  details_info; } ;
typedef  int /*<<< orphan*/  dm_thin_id ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (struct dm_thin_device*) ; 
 int FUNC1 (struct dm_pool_metadata*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dm_thin_device**) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_thin_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct dm_pool_metadata *pmd, dm_thin_id dev)
{
	int r;
	uint64_t key = dev;
	struct dm_thin_device *td;

	/* TODO: failure should mark the transaction invalid */
	r = FUNC1(pmd, dev, 0, &td);
	if (r)
		return r;

	if (td->open_count > 1) {
		FUNC0(td);
		return -EBUSY;
	}

	FUNC4(&td->list);
	FUNC3(td);
	r = FUNC2(&pmd->details_info, pmd->details_root,
			    &key, &pmd->details_root);
	if (r)
		return r;

	r = FUNC2(&pmd->tl_info, pmd->root, &key, &pmd->root);
	if (r)
		return r;

	return 0;
}