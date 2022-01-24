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
struct ttm_buffer_object {int /*<<< orphan*/  event_queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ttm_buffer_object*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC3(struct ttm_buffer_object *bo,
				  bool interruptible)
{
	if (interruptible) {
		return FUNC2(bo->event_queue,
					       !FUNC0(bo));
	} else {
		FUNC1(bo->event_queue, !FUNC0(bo));
		return 0;
	}
}