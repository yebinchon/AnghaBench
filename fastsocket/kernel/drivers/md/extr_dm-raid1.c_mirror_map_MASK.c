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
union map_info {struct dm_raid1_read_record* ptr; int /*<<< orphan*/  ll; } ;
struct mirror_set {int /*<<< orphan*/  read_record_pool; int /*<<< orphan*/  rh; } ;
struct mirror {int dummy; } ;
struct dm_target {struct mirror_set* private; } ;
struct dm_raid1_read_record {struct mirror* m; int /*<<< orphan*/  details; } ;
struct dm_dirty_log {TYPE_1__* type; } ;
struct bio {int /*<<< orphan*/  bi_sector; } ;
struct TYPE_2__ {int (* in_sync ) (struct dm_dirty_log*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int DM_MAPIO_REMAPPED ; 
 int DM_MAPIO_SUBMITTED ; 
 int EIO ; 
 int EWOULDBLOCK ; 
 int /*<<< orphan*/  GFP_NOIO ; 
 int READA ; 
 int WRITE ; 
 int FUNC0 (struct bio*) ; 
 struct mirror* FUNC1 (struct mirror_set*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct bio*) ; 
 struct dm_dirty_log* FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct dm_raid1_read_record*) ; 
 int /*<<< orphan*/  FUNC6 (struct mirror*,struct bio*) ; 
 struct dm_raid1_read_record* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct mirror_set*,struct bio*,int) ; 
 int FUNC9 (struct dm_dirty_log*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int FUNC11(struct dm_target *ti, struct bio *bio,
		      union map_info *map_context)
{
	int r, rw = FUNC0(bio);
	struct mirror *m;
	struct mirror_set *ms = ti->private;
	struct dm_raid1_read_record *read_record = NULL;
	struct dm_dirty_log *log = FUNC4(ms->rh);

	if (rw == WRITE) {
		/* Save region for mirror_end_io() handler */
		map_context->ll = FUNC3(ms->rh, bio);
		FUNC8(ms, bio, rw);
		return DM_MAPIO_SUBMITTED;
	}

	r = log->type->in_sync(log, FUNC3(ms->rh, bio), 0);
	if (r < 0 && r != -EWOULDBLOCK)
		return r;

	/*
	 * If region is not in-sync queue the bio.
	 */
	if (!r || (r == -EWOULDBLOCK)) {
		if (rw == READA)
			return -EWOULDBLOCK;

		FUNC8(ms, bio, rw);
		return DM_MAPIO_SUBMITTED;
	}

	/*
	 * The region is in-sync and we can perform reads directly.
	 * Store enough information so we can retry if it fails.
	 */
	m = FUNC1(ms, bio->bi_sector);
	if (FUNC10(!m))
		return -EIO;

	read_record = FUNC7(ms->read_record_pool, GFP_NOIO);
	if (FUNC5(read_record)) {
		FUNC2(&read_record->details, bio);
		map_context->ptr = read_record;
		read_record->m = m;
	}

	FUNC6(m, bio);

	return DM_MAPIO_REMAPPED;
}