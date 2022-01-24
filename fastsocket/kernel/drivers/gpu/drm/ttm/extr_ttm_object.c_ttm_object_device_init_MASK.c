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
struct ttm_object_device {int /*<<< orphan*/  object_hash; int /*<<< orphan*/  object_count; int /*<<< orphan*/  object_lock; struct ttm_mem_global* mem_glob; } ;
struct ttm_mem_global {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (struct ttm_object_device*) ; 
 struct ttm_object_device* FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 

struct ttm_object_device *FUNC7(struct ttm_mem_global
						 *mem_glob,
						 unsigned int hash_order)
{
	struct ttm_object_device *tdev = FUNC3(sizeof(*tdev), GFP_KERNEL);
	int ret;

	if (FUNC6(tdev == NULL))
		return NULL;

	tdev->mem_glob = mem_glob;
	FUNC5(&tdev->object_lock);
	FUNC0(&tdev->object_count, 0);
	ret = FUNC1(&tdev->object_hash, hash_order);

	if (FUNC4(ret == 0))
		return tdev;

	FUNC2(tdev);
	return NULL;
}