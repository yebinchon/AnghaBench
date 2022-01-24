#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  offset_in; int /*<<< orphan*/  idx_in; int /*<<< orphan*/  pending; scalar_t__ idx_out; struct bio* bio_out; } ;
struct dm_crypt_io {struct dm_crypt_io* base_io; TYPE_3__ ctx; TYPE_2__* base_bio; TYPE_1__* target; int /*<<< orphan*/  sector; int /*<<< orphan*/  error; } ;
struct crypt_config {int dummy; } ;
struct bio {scalar_t__ bi_size; } ;
typedef  int /*<<< orphan*/  sector_t ;
struct TYPE_7__ {unsigned int bi_size; } ;
struct TYPE_6__ {struct crypt_config* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  BLK_RW_ASYNC ; 
 int /*<<< orphan*/  ENOMEM ; 
 int HZ ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 struct bio* FUNC3 (struct dm_crypt_io*,unsigned int,unsigned int*) ; 
 int FUNC4 (struct crypt_config*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct crypt_config*,TYPE_3__*,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct dm_crypt_io*) ; 
 int /*<<< orphan*/  FUNC7 (struct dm_crypt_io*) ; 
 struct dm_crypt_io* FUNC8 (TYPE_1__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dm_crypt_io*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static void FUNC11(struct dm_crypt_io *io)
{
	struct crypt_config *cc = io->target->private;
	struct bio *clone;
	struct dm_crypt_io *new_io;
	int crypt_finished;
	unsigned out_of_pages = 0;
	unsigned remaining = io->base_bio->bi_size;
	sector_t sector = io->sector;
	int r;

	/*
	 * Prevent io from disappearing until this function completes.
	 */
	FUNC7(io);
	FUNC5(cc, &io->ctx, NULL, io->base_bio, sector);

	/*
	 * The allocated buffers can be smaller than the whole bio,
	 * so repeat the whole process until all the data can be handled.
	 */
	while (remaining) {
		clone = FUNC3(io, remaining, &out_of_pages);
		if (FUNC10(!clone)) {
			io->error = -ENOMEM;
			break;
		}

		io->ctx.bio_out = clone;
		io->ctx.idx_out = 0;

		remaining -= clone->bi_size;
		sector += FUNC1(clone);

		FUNC7(io);
		r = FUNC4(cc, &io->ctx);
		crypt_finished = FUNC0(&io->ctx.pending);

		/* Encryption was already finished, submit io now */
		if (crypt_finished) {
			FUNC9(io, r, 0);

			/*
			 * If there was an error, do not try next fragments.
			 * For async, error is processed in async handler.
			 */
			if (FUNC10(r < 0))
				break;

			io->sector = sector;
		}

		/*
		 * Out of memory -> run queues
		 * But don't wait if split was due to the io size restriction
		 */
		if (FUNC10(out_of_pages))
			FUNC2(BLK_RW_ASYNC, HZ/100);

		/*
		 * With async crypto it is unsafe to share the crypto context
		 * between fragments, so switch to a new dm_crypt_io structure.
		 */
		if (FUNC10(!crypt_finished && remaining)) {
			new_io = FUNC8(io->target, io->base_bio,
						sector);
			FUNC7(new_io);
			FUNC5(cc, &new_io->ctx, NULL,
					   io->base_bio, sector);
			new_io->ctx.idx_in = io->ctx.idx_in;
			new_io->ctx.offset_in = io->ctx.offset_in;

			/*
			 * Fragments after the first use the base_io
			 * pending count.
			 */
			if (!io->base_io)
				new_io->base_io = io;
			else {
				new_io->base_io = io->base_io;
				FUNC7(io->base_io);
				FUNC6(io);
			}

			io = new_io;
		}
	}

	FUNC6(io);
}