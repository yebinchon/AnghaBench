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
struct mirror {TYPE_1__* dev; } ;
struct dm_target {scalar_t__ private; } ;
struct dm_bio_details {int dummy; } ;
struct dm_raid1_read_record {struct dm_bio_details details; struct mirror* m; } ;
struct bio {int bi_rw; } ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int BIO_DISCARD ; 
 int BIO_FLUSH ; 
 int /*<<< orphan*/  BIO_RW_AHEAD ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  DM_RAID1_READ_ERROR ; 
 int EIO ; 
 int EOPNOTSUPP ; 
 int EWOULDBLOCK ; 
 int WRITE ; 
 int FUNC2 (struct bio*) ; 
 scalar_t__ FUNC3 (struct bio*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (struct mirror*) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_bio_details*,struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mirror*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dm_raid1_read_record*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct mirror_set*,struct bio*) ; 
 int /*<<< orphan*/  FUNC10 (struct mirror_set*,struct bio*,int) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct dm_target *ti, struct bio *bio,
			 int error, union map_info *map_context)
{
	int rw = FUNC2(bio);
	struct mirror_set *ms = (struct mirror_set *) ti->private;
	struct mirror *m = NULL;
	struct dm_bio_details *bd = NULL;
	struct dm_raid1_read_record *read_record = map_context->ptr;

	/*
	 * We need to dec pending if this was a write.
	 */
	if (rw == WRITE) {
		if (!(bio->bi_rw & (BIO_FLUSH | BIO_DISCARD)))
			FUNC6(ms->rh, map_context->ll);
		return error;
	}

	if (error == -EOPNOTSUPP)
		goto out;

	if ((error == -EWOULDBLOCK) && FUNC3(bio, BIO_RW_AHEAD))
		goto out;

	if (FUNC11(error)) {
		if (!read_record) {
			/*
			 * There wasn't enough memory to record necessary
			 * information for a retry or there was no other
			 * mirror in-sync.
			 */
			FUNC1("Mirror read failed.");
			return -EIO;
		}

		m = read_record->m;

		FUNC0("Mirror read failed from %s. Trying alternative device.",
		      m->dev->name);

		FUNC7(m, DM_RAID1_READ_ERROR);

		/*
		 * A failed read is requeued for another attempt using an intact
		 * mirror.
		 */
		if (FUNC4(m) || FUNC9(ms, bio)) {
			bd = &read_record->details;

			FUNC5(bd, bio);
			FUNC8(read_record, ms->read_record_pool);
			map_context->ptr = NULL;
			FUNC10(ms, bio, rw);
			return 1;
		}
		FUNC0("All replicated volumes dead, failing I/O");
	}

out:
	if (read_record) {
		FUNC8(read_record, ms->read_record_pool);
		map_context->ptr = NULL;
	}

	return error;
}