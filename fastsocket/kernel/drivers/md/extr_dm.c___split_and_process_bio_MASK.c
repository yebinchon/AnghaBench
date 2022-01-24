#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct bio {int bi_rw; int /*<<< orphan*/  bi_idx; int /*<<< orphan*/  bi_sector; } ;
struct mapped_device {struct bio flush_bio; } ;
struct clone_info {int /*<<< orphan*/  map; TYPE_1__* io; scalar_t__ sector_count; struct bio* bio; struct mapped_device* md; int /*<<< orphan*/  idx; int /*<<< orphan*/  sector; } ;
struct TYPE_4__ {int /*<<< orphan*/  endio_lock; struct mapped_device* md; struct bio* bio; int /*<<< orphan*/  io_count; int /*<<< orphan*/  error; } ;

/* Variables and functions */
 int BIO_FLUSH ; 
 int FUNC0 (struct clone_info*) ; 
 int FUNC1 (struct clone_info*) ; 
 TYPE_1__* FUNC2 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 scalar_t__ FUNC5 (struct bio*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mapped_device*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static void FUNC12(struct mapped_device *md, struct bio *bio)
{
	struct clone_info ci;
	int error = 0;

	ci.map = FUNC7(md);
	if (FUNC11(!ci.map)) {
		FUNC4(bio);
		return;
	}

	ci.md = md;
	ci.io = FUNC2(md);
	ci.io->error = 0;
	FUNC3(&ci.io->io_count, 1);
	ci.io->bio = bio;
	ci.io->md = md;
	FUNC9(&ci.io->endio_lock);
	ci.sector = bio->bi_sector;
	ci.idx = bio->bi_idx;

	FUNC10(ci.io);
	if (bio->bi_rw & BIO_FLUSH) {
		ci.bio = &ci.md->flush_bio;
		ci.sector_count = 0;
		error = FUNC1(&ci);
		/* dec_pending submits any data associated with flush */
	} else {
		ci.bio = bio;
		ci.sector_count = FUNC5(bio);
		while (ci.sector_count && !error)
			error = FUNC0(&ci);
	}

	/* drop the extra reference count */
	FUNC6(ci.io, error);
	FUNC8(ci.map);
}