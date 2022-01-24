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
union map_info {int ll; } ;
struct flakey_c {unsigned int start_time; unsigned int up_interval; unsigned int down_interval; scalar_t__ corrupt_bio_rw; scalar_t__ corrupt_bio_byte; int /*<<< orphan*/  flags; } ;
struct dm_target {struct flakey_c* private; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int DM_MAPIO_REMAPPED ; 
 int DM_MAPIO_SUBMITTED ; 
 int /*<<< orphan*/  DROP_WRITES ; 
 int EIO ; 
 unsigned int HZ ; 
 scalar_t__ READ ; 
 scalar_t__ WRITE ; 
 scalar_t__ FUNC0 (struct bio*,struct flakey_c*) ; 
 scalar_t__ FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*,struct flakey_c*) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_target*,struct bio*) ; 
 unsigned int jiffies ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC6(struct dm_target *ti, struct bio *bio,
		      union map_info *map_context)
{
	struct flakey_c *fc = ti->private;
	unsigned elapsed;

	/* Are we alive ? */
	elapsed = (jiffies - fc->start_time) / HZ;
	if (elapsed % (fc->up_interval + fc->down_interval) >= fc->up_interval) {
		/*
		 * Flag this bio as submitted while down.
		 */
		map_context->ll = 1;

		/*
		 * Map reads as normal.
		 */
		if (FUNC1(bio) == READ)
			goto map_bio;

		/*
		 * Drop writes?
		 */
		if (FUNC5(DROP_WRITES, &fc->flags)) {
			FUNC2(bio, 0);
			return DM_MAPIO_SUBMITTED;
		}

		/*
		 * Corrupt matching writes.
		 */
		if (fc->corrupt_bio_byte && (fc->corrupt_bio_rw == WRITE)) {
			if (FUNC0(bio, fc))
				FUNC3(bio, fc);
			goto map_bio;
		}

		/*
		 * By default, error all I/O.
		 */
		return -EIO;
	}

map_bio:
	FUNC4(ti, bio);

	return DM_MAPIO_REMAPPED;
}