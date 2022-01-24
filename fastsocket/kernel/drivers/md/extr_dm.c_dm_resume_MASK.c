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
struct mapped_device {int /*<<< orphan*/  suspend_lock; int /*<<< orphan*/  flags; int /*<<< orphan*/  queue; } ;
struct dm_table {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMF_SUSPENDED ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct dm_table* FUNC1 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct mapped_device*) ; 
 scalar_t__ FUNC3 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC6 (struct dm_table*) ; 
 int FUNC7 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC8 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct mapped_device*) ; 

int FUNC13(struct mapped_device *md)
{
	int r = -EINVAL;
	struct dm_table *map = NULL;

	FUNC9(&md->suspend_lock);
	if (!FUNC4(md))
		goto out;

	map = FUNC1(md);
	if (!map || !FUNC5(map))
		goto out;

	r = FUNC7(map);
	if (r)
		goto out;

	FUNC2(md);

	/*
	 * Flushing deferred I/Os must be done after targets are resumed
	 * so that mapping of targets can work correctly.
	 * Request-based dm is queueing the deferred I/Os in its request_queue.
	 */
	if (FUNC3(md))
		FUNC11(md->queue);

	FUNC12(md);

	FUNC0(DMF_SUSPENDED, &md->flags);

	FUNC8(map);
	r = 0;
out:
	FUNC6(map);
	FUNC10(&md->suspend_lock);

	return r;
}