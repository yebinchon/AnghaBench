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
typedef  int uint64_t ;
struct ttm_mem_zone {int dummy; } ;
struct ttm_mem_global {int dummy; } ;

/* Variables and functions */
 int ENOMEM ; 
 int TTM_MEMORY_ALLOC_RETRIES ; 
 scalar_t__ FUNC0 (struct ttm_mem_global*,struct ttm_mem_zone*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ttm_mem_global*,int,int) ; 
 scalar_t__ FUNC2 (int) ; 

__attribute__((used)) static int FUNC3(struct ttm_mem_global *glob,
				     struct ttm_mem_zone *single_zone,
				     uint64_t memory,
				     bool no_wait, bool interruptible)
{
	int count = TTM_MEMORY_ALLOC_RETRIES;

	while (FUNC2(FUNC0(glob,
					       single_zone,
					       memory, true)
			!= 0)) {
		if (no_wait)
			return -ENOMEM;
		if (FUNC2(count-- == 0))
			return -ENOMEM;
		FUNC1(glob, false, memory + (memory >> 2) + 16);
	}

	return 0;
}