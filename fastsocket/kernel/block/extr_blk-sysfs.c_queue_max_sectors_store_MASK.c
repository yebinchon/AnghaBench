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
struct TYPE_2__ {unsigned long max_sectors; } ;
struct request_queue {int /*<<< orphan*/  queue_lock; TYPE_1__ limits; } ;
typedef  int /*<<< orphan*/  ssize_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int PAGE_CACHE_SHIFT ; 
 int FUNC0 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long*,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t
FUNC4(struct request_queue *q, const char *page, size_t count)
{
	unsigned long max_sectors_kb,
		max_hw_sectors_kb = FUNC0(q) >> 1,
			page_kb = 1 << (PAGE_CACHE_SHIFT - 10);
	ssize_t ret = FUNC1(&max_sectors_kb, page, count);

	if (max_sectors_kb > max_hw_sectors_kb || max_sectors_kb < page_kb)
		return -EINVAL;

	FUNC2(q->queue_lock);
	q->limits.max_sectors = max_sectors_kb << 1;
	FUNC3(q->queue_lock);

	return ret;
}