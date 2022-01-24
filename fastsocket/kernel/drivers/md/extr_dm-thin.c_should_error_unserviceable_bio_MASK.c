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
struct TYPE_2__ {int error_if_no_space; } ;
struct pool {TYPE_1__ pf; } ;
typedef  enum pool_mode { ____Placeholder_pool_mode } pool_mode ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  PM_FAIL 131 
#define  PM_OUT_OF_DATA_SPACE 130 
#define  PM_READ_ONLY 129 
#define  PM_WRITE 128 
 int FUNC1 (struct pool*) ; 

__attribute__((used)) static bool FUNC2(struct pool *pool)
{
	enum pool_mode m = FUNC1(pool);

	switch (m) {
	case PM_WRITE:
		/* Shouldn't get here */
		FUNC0("bio unserviceable, yet pool is in PM_WRITE mode");
		return true;

	case PM_OUT_OF_DATA_SPACE:
		return pool->pf.error_if_no_space;

	case PM_READ_ONLY:
	case PM_FAIL:
		return true;
	default:
		/* Shouldn't get here */
		FUNC0("bio unserviceable, yet pool has an unknown mode");
		return true;
	}
}