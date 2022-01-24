#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {unsigned int ra_pages; } ;
struct request_queue {TYPE_5__ backing_dev_info; } ;
struct TYPE_9__ {unsigned int raid_devs; unsigned int data_devs; } ;
struct raid_set {TYPE_4__* dev; TYPE_2__ set; TYPE_6__* ti; } ;
struct mapped_device {int dummy; } ;
struct backing_dev_info {unsigned int ra_pages; } ;
struct TYPE_14__ {TYPE_1__* queue; } ;
struct TYPE_13__ {int /*<<< orphan*/  table; } ;
struct TYPE_11__ {TYPE_3__* dev; } ;
struct TYPE_10__ {int /*<<< orphan*/  bdev; } ;
struct TYPE_8__ {struct backing_dev_info backing_dev_info; } ;

/* Variables and functions */
 int /*<<< orphan*/  SECTORS_PER_PAGE ; 
 struct request_queue* FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_7__* FUNC1 (struct mapped_device*) ; 
 unsigned int FUNC2 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mapped_device*) ; 
 struct mapped_device* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct raid_set *rs,
			      unsigned sectors, unsigned stripes)
{
	unsigned ra_pages = FUNC2(sectors, SECTORS_PER_PAGE);
	struct mapped_device *md = FUNC4(rs->ti->table);
	struct backing_dev_info *bdi = &FUNC1(md)->queue->backing_dev_info;

	/* Set read-ahead for the RAID set and the component devices. */
	if (ra_pages) {
		unsigned p = rs->set.raid_devs;

		bdi->ra_pages = stripes * ra_pages * rs->set.data_devs;

		while (p--) {
			struct request_queue *q =
				FUNC0(rs->dev[p].dev->bdev);

			q->backing_dev_info.ra_pages = ra_pages;
		}
	}

	FUNC3(md);
}