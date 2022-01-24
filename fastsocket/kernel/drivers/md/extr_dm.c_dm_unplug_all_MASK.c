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
struct mapped_device {int dummy; } ;
struct dm_table {int dummy; } ;

/* Variables and functions */
 struct dm_table* FUNC0 (struct mapped_device*) ; 
 scalar_t__ FUNC1 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_table*) ; 
 int /*<<< orphan*/  FUNC4 (struct request_queue*) ; 

__attribute__((used)) static void FUNC5(struct request_queue *q)
{
	struct mapped_device *md = q->queuedata;
	struct dm_table *map = FUNC0(md);

	if (map) {
		if (FUNC1(md))
			FUNC4(q);

		FUNC3(map);
		FUNC2(map);
	}
}