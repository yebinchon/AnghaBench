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
typedef  union map_info {int dummy; } map_info ;
struct TYPE_2__ {int /*<<< orphan*/  in_lock; int /*<<< orphan*/  in; } ;
struct raid_set {scalar_t__ stats; TYPE_1__ io; } ;
struct dm_target {scalar_t__ begin; struct raid_set* private; } ;
struct bio {int /*<<< orphan*/  bi_sector; } ;

/* Variables and functions */
 int DM_MAPIO_SUBMITTED ; 
 int EIO ; 
 scalar_t__ READ ; 
 scalar_t__ READA ; 
 scalar_t__ S_BIOS_READ ; 
 scalar_t__ S_BIOS_WRITE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bio*) ; 
 scalar_t__ FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct raid_set*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct raid_set*) ; 

__attribute__((used)) static int FUNC8(struct dm_target *ti, struct bio *bio,
		    union map_info *map_context)
{
	/* I don't want to waste stripe cache capacity. */
	if (FUNC3(bio) == READA)
		return -EIO;
	else {
		struct raid_set *rs = ti->private;

		/*
		 * Get io reference to be waiting for to drop
		 * to zero on device suspension/destruction.
		 */
		FUNC4(rs);
		bio->bi_sector -= ti->begin;	/* Remap sector. */

		/* Queue io to RAID set. */
		FUNC5(&rs->io.in_lock);
		FUNC2(&rs->io.in, bio);
		FUNC6(&rs->io.in_lock);

		/* Wake daemon to process input list. */
		FUNC7(rs);

		/* REMOVEME: statistics. */
		FUNC0(rs->stats + (FUNC1(bio) == READ ?
				        S_BIOS_READ : S_BIOS_WRITE));
		return DM_MAPIO_SUBMITTED;	/* Handle later. */
	}
}