#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct mapped_device {TYPE_2__* queue; int /*<<< orphan*/  flags; } ;
struct dm_table {int dummy; } ;
struct TYPE_3__ {int state; } ;
struct TYPE_4__ {TYPE_1__ backing_dev_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMF_BLOCK_IO_FOR_SUSPEND ; 
 struct dm_table* FUNC0 (struct mapped_device*) ; 
 scalar_t__ FUNC1 (struct mapped_device*) ; 
 int FUNC2 (struct dm_table*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(void *congested_data, int bdi_bits)
{
	int r = bdi_bits;
	struct mapped_device *md = congested_data;
	struct dm_table *map;

	if (!FUNC4(DMF_BLOCK_IO_FOR_SUSPEND, &md->flags)) {
		map = FUNC0(md);
		if (map) {
			/*
			 * Request-based dm cares about only own queue for
			 * the query about congestion status of request_queue
			 */
			if (FUNC1(md))
				r = md->queue->backing_dev_info.state &
				    bdi_bits;
			else
				r = FUNC2(map, bdi_bits);

			FUNC3(map);
		}
	}

	return r;
}