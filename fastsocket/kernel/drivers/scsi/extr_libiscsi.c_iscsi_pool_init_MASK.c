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
struct iscsi_pool {int max; void** pool; int /*<<< orphan*/ * queue; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct iscsi_pool*) ; 
 int /*<<< orphan*/ * FUNC3 (void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 void* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void**,void**,int) ; 
 int /*<<< orphan*/  FUNC6 (struct iscsi_pool*,int /*<<< orphan*/ ,int) ; 

int
FUNC7(struct iscsi_pool *q, int max, void ***items, int item_size)
{
	int i, num_arrays = 1;

	FUNC6(q, 0, sizeof(*q));

	q->max = max;

	/* If the user passed an items pointer, he wants a copy of
	 * the array. */
	if (items)
		num_arrays++;
	q->pool = FUNC4(num_arrays * max * sizeof(void*), GFP_KERNEL);
	if (q->pool == NULL)
		return -ENOMEM;

	q->queue = FUNC3((void*)q->pool, max * sizeof(void*),
			      GFP_KERNEL, NULL);
	if (FUNC0(q->queue)) {
		q->queue = NULL;
		goto enomem;
	}

	for (i = 0; i < max; i++) {
		q->pool[i] = FUNC4(item_size, GFP_KERNEL);
		if (q->pool[i] == NULL) {
			q->max = i;
			goto enomem;
		}
		FUNC1(q->queue, (void*)&q->pool[i], sizeof(void*));
	}

	if (items) {
		*items = q->pool + max;
		FUNC5(*items, q->pool, max * sizeof(void *));
	}

	return 0;

enomem:
	FUNC2(q);
	return -ENOMEM;
}