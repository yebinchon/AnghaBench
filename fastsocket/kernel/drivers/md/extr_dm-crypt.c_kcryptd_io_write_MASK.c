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
struct TYPE_2__ {struct bio* bio_out; } ;
struct dm_crypt_io {TYPE_1__ ctx; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bio*) ; 

__attribute__((used)) static void FUNC1(struct dm_crypt_io *io)
{
	struct bio *clone = io->ctx.bio_out;
	FUNC0(clone);
}