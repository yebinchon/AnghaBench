#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  pending; } ;
struct dm_crypt_io {TYPE_2__ ctx; int /*<<< orphan*/  sector; int /*<<< orphan*/  base_bio; TYPE_1__* target; } ;
struct crypt_config {int dummy; } ;
struct TYPE_4__ {struct crypt_config* private; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct crypt_config*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (struct crypt_config*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dm_crypt_io*) ; 
 int /*<<< orphan*/  FUNC4 (struct dm_crypt_io*) ; 
 int /*<<< orphan*/  FUNC5 (struct dm_crypt_io*,int) ; 

__attribute__((used)) static void FUNC6(struct dm_crypt_io *io)
{
	struct crypt_config *cc = io->target->private;
	int r = 0;

	FUNC4(io);

	FUNC2(cc, &io->ctx, io->base_bio, io->base_bio,
			   io->sector);

	r = FUNC1(cc, &io->ctx);

	if (FUNC0(&io->ctx.pending))
		FUNC5(io, r);

	FUNC3(io);
}