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
struct ttm_range_manager {int /*<<< orphan*/  lock; int /*<<< orphan*/  mm; } ;
struct ttm_mem_type_manager {struct ttm_range_manager* priv; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (struct ttm_range_manager*) ; 
 struct ttm_range_manager* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct ttm_mem_type_manager *man,
			   unsigned long p_size)
{
	struct ttm_range_manager *rman;
	int ret;

	rman = FUNC2(sizeof(*rman), GFP_KERNEL);
	if (!rman)
		return -ENOMEM;

	ret = FUNC0(&rman->mm, 0, p_size);
	if (ret) {
		FUNC1(rman);
		return ret;
	}

	FUNC3(&rman->lock);
	man->priv = rman;
	return 0;
}