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
struct dm_snapshot {TYPE_2__* store; TYPE_1__* cow; } ;
struct dm_exception {scalar_t__ old_chunk; int /*<<< orphan*/  new_chunk; } ;
struct bio {int bi_sector; int /*<<< orphan*/  bi_bdev; } ;
typedef  scalar_t__ chunk_t ;
struct TYPE_4__ {int chunk_mask; } ;
struct TYPE_3__ {int /*<<< orphan*/  bdev; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct dm_snapshot *s, struct dm_exception *e,
			    struct bio *bio, chunk_t chunk)
{
	bio->bi_bdev = s->cow->bdev;
	bio->bi_sector = FUNC0(s->store,
					 FUNC1(e->new_chunk) +
					 (chunk - e->old_chunk)) +
					 (bio->bi_sector &
					  s->store->chunk_mask);
}