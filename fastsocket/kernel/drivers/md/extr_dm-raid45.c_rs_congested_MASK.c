#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct request_queue {int /*<<< orphan*/  backing_dev_info; } ;
struct TYPE_6__ {unsigned int raid_devs; } ;
struct raid_set {scalar_t__ stats; TYPE_2__* dev; TYPE_3__ set; } ;
struct TYPE_5__ {TYPE_1__* dev; } ;
struct TYPE_4__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct raid_set*) ; 
 scalar_t__ FUNC1 (struct raid_set*) ; 
 scalar_t__ S_CONGESTED ; 
 scalar_t__ S_NOT_CONGESTED ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 struct request_queue* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC5 (struct raid_set*) ; 

__attribute__((used)) static int FUNC6(void *congested_data, int bdi_bits)
{
	int r;
	unsigned p;
	struct raid_set *rs = congested_data;

	if (FUNC5(rs) || FUNC1(rs) || FUNC0(rs))
		r = 1;
	else for (r = 0, p = rs->set.raid_devs; !r && p--; ) {
		/* If any of our component devices are overloaded. */
		struct request_queue *q = FUNC3(rs->dev[p].dev->bdev);

		r |= FUNC4(&q->backing_dev_info, bdi_bits);
	}

	/* REMOVEME: statistics. */
	FUNC2(rs->stats + (r ? S_CONGESTED : S_NOT_CONGESTED));
	return r;
}