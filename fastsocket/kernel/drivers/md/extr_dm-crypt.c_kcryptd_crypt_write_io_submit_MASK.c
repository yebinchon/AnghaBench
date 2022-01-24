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
struct TYPE_3__ {scalar_t__ idx_out; struct bio* bio_out; } ;
struct dm_crypt_io {scalar_t__ sector; TYPE_1__ ctx; int /*<<< orphan*/  error; TYPE_2__* target; } ;
struct crypt_config {scalar_t__ start; } ;
struct bio {scalar_t__ bi_vcnt; scalar_t__ bi_sector; } ;
struct TYPE_4__ {struct crypt_config* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int /*<<< orphan*/  FUNC2 (struct dm_crypt_io*) ; 
 int /*<<< orphan*/  FUNC3 (struct crypt_config*,struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_crypt_io*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct dm_crypt_io *io,
					  int error, int async)
{
	struct bio *clone = io->ctx.bio_out;
	struct crypt_config *cc = io->target->private;

	if (FUNC6(error < 0)) {
		FUNC3(cc, clone);
		FUNC1(clone);
		io->error = -EIO;
		FUNC2(io);
		return;
	}

	/* crypt_convert should have filled the clone bio */
	FUNC0(io->ctx.idx_out < clone->bi_vcnt);

	clone->bi_sector = cc->start + io->sector;

	if (async)
		FUNC5(io);
	else
		FUNC4(clone);
}