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
struct request_queue {struct mapped_device* queuedata; } ;
struct mapped_device {int /*<<< orphan*/  flags; } ;
struct dm_table {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DMF_BLOCK_IO_FOR_SUSPEND ; 
 struct dm_table* FUNC0 (struct mapped_device*) ; 
 int FUNC1 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_table*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct request_queue *q)
{
	int r;
	struct mapped_device *md = q->queuedata;
	struct dm_table *map = FUNC0(md);

	if (!map || FUNC3(DMF_BLOCK_IO_FOR_SUSPEND, &md->flags))
		r = 1;
	else
		r = FUNC1(map);

	FUNC2(map);

	return r;
}