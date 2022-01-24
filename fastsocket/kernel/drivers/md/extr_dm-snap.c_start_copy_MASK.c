#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct dm_snapshot {int /*<<< orphan*/  kcopyd_client; TYPE_4__* store; TYPE_2__* cow; TYPE_1__* origin; } ;
struct TYPE_7__ {int /*<<< orphan*/  new_chunk; int /*<<< orphan*/  old_chunk; } ;
struct dm_snap_pending_exception {TYPE_3__ e; struct dm_snapshot* snap; } ;
struct dm_io_region {int /*<<< orphan*/  count; void* sector; struct block_device* bdev; } ;
struct block_device {int dummy; } ;
typedef  void* sector_t ;
struct TYPE_8__ {scalar_t__ chunk_size; } ;
struct TYPE_6__ {struct block_device* bdev; } ;
struct TYPE_5__ {struct block_device* bdev; } ;

/* Variables and functions */
 void* FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  copy_callback ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct dm_io_region*,int,struct dm_io_region*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct dm_snap_pending_exception*) ; 
 void* FUNC2 (struct block_device*) ; 
 int /*<<< orphan*/  FUNC3 (void*,void*) ; 

__attribute__((used)) static void FUNC4(struct dm_snap_pending_exception *pe)
{
	struct dm_snapshot *s = pe->snap;
	struct dm_io_region src, dest;
	struct block_device *bdev = s->origin->bdev;
	sector_t dev_size;

	dev_size = FUNC2(bdev);

	src.bdev = bdev;
	src.sector = FUNC0(s->store, pe->e.old_chunk);
	src.count = FUNC3((sector_t)s->store->chunk_size, dev_size - src.sector);

	dest.bdev = s->cow->bdev;
	dest.sector = FUNC0(s->store, pe->e.new_chunk);
	dest.count = src.count;

	/* Hand over to kcopyd */
	FUNC1(s->kcopyd_client, &src, 1, &dest, 0, copy_callback, pe);
}