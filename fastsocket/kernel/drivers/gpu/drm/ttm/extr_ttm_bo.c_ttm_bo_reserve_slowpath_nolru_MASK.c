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
typedef  scalar_t__ uint32_t ;
struct ttm_buffer_object {int seq_valid; scalar_t__ val_seq; int /*<<< orphan*/  event_queue; int /*<<< orphan*/  reserved; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (struct ttm_buffer_object*,int) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

int FUNC5(struct ttm_buffer_object *bo,
				  bool interruptible, uint32_t sequence)
{
	bool wake_up = false;
	int ret;

	while (FUNC3(FUNC1(&bo->reserved, 1) != 0)) {
		FUNC0(bo->seq_valid && sequence == bo->val_seq);

		ret = FUNC2(bo, interruptible);

		if (FUNC3(ret))
			return ret;
	}

	if ((bo->val_seq - sequence < (1 << 31)) || !bo->seq_valid)
		wake_up = true;

	/**
	 * Wake up waiters that may need to recheck for deadlock,
	 * if we decreased the sequence number.
	 */
	bo->val_seq = sequence;
	bo->seq_valid = true;
	if (wake_up)
		FUNC4(&bo->event_queue);

	return 0;
}