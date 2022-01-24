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
struct raid_set {TYPE_1__* ti; } ;
struct mapped_device {int dummy; } ;
struct backing_dev_info {struct raid_set* congested_data; int /*<<< orphan*/  congested_fn; } ;
struct TYPE_6__ {TYPE_2__* queue; } ;
struct TYPE_5__ {struct backing_dev_info backing_dev_info; } ;
struct TYPE_4__ {int /*<<< orphan*/  table; } ;

/* Variables and functions */
 TYPE_3__* FUNC0 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct mapped_device*) ; 
 struct mapped_device* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  rs_congested ; 

__attribute__((used)) static void FUNC3(struct raid_set *rs)
{
	struct mapped_device *md = FUNC2(rs->ti->table);
	struct backing_dev_info *bdi = &FUNC0(md)->queue->backing_dev_info;

	/* Set congested function and data. */
	bdi->congested_fn = rs_congested;
	bdi->congested_data = rs;
	FUNC1(md);
}