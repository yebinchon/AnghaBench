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
struct dm_crypt_io {int error; TYPE_1__* target; } ;
struct crypt_config {int dummy; } ;
struct bio {struct dm_crypt_io* bi_private; } ;
struct TYPE_2__ {struct crypt_config* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_UPTODATE ; 
 int EIO ; 
 unsigned int READ ; 
 unsigned int WRITE ; 
 unsigned int FUNC0 (struct bio*) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_crypt_io*) ; 
 int /*<<< orphan*/  FUNC4 (struct crypt_config*,struct bio*) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_crypt_io*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static void FUNC7(struct bio *clone, int error)
{
	struct dm_crypt_io *io = clone->bi_private;
	struct crypt_config *cc = io->target->private;
	unsigned rw = FUNC0(clone);

	if (FUNC6(!FUNC1(clone, BIO_UPTODATE) && !error))
		error = -EIO;

	/*
	 * free the processed pages
	 */
	if (rw == WRITE)
		FUNC4(cc, clone);

	FUNC2(clone);

	if (rw == READ && !error) {
		FUNC5(io);
		return;
	}

	if (FUNC6(error))
		io->error = error;

	FUNC3(io);
}