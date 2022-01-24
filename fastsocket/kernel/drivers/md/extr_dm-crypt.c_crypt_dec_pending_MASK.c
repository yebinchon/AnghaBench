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
struct dm_crypt_io {int error; int /*<<< orphan*/  pending; struct dm_crypt_io* base_io; struct bio* base_bio; TYPE_1__* target; } ;
struct crypt_config {int /*<<< orphan*/  io_pool; } ;
struct bio {int dummy; } ;
struct TYPE_2__ {struct crypt_config* private; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct bio*,int) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_crypt_io*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct dm_crypt_io *io)
{
	struct crypt_config *cc = io->target->private;
	struct bio *base_bio = io->base_bio;
	struct dm_crypt_io *base_io = io->base_io;
	int error = io->error;

	if (!FUNC0(&io->pending))
		return;

	FUNC3(io, cc->io_pool);

	if (FUNC2(!base_io))
		FUNC1(base_bio, error);
	else {
		if (error && !base_io->error)
			base_io->error = error;
		FUNC4(base_io);
	}
}