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
struct TYPE_2__ {scalar_t__ refcount; int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int erst_disable ; 
 TYPE_1__ erst_record_id_cache ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

void FUNC4(void)
{
	/*
	 * erst_disable != 0 should be detected by invoker via the
	 * return value of erst_get_record_id_begin/next, so this
	 * function should not be called for erst_disable != 0.
	 */
	FUNC0(erst_disable);

	FUNC2(&erst_record_id_cache.lock);
	erst_record_id_cache.refcount--;
	FUNC0(erst_record_id_cache.refcount < 0);
	FUNC1();
	FUNC3(&erst_record_id_cache.lock);
}