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
struct request {int dummy; } ;
struct mapped_device {int dummy; } ;
struct dm_rq_target_io {struct request clone; int /*<<< orphan*/  info; scalar_t__ error; struct request* orig; int /*<<< orphan*/ * ti; struct mapped_device* md; } ;
typedef  int /*<<< orphan*/  gfp_t ;

/* Variables and functions */
 struct dm_rq_target_io* FUNC0 (struct mapped_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct dm_rq_target_io*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct request*,struct request*,struct dm_rq_target_io*) ; 

__attribute__((used)) static struct request *FUNC4(struct request *rq, struct mapped_device *md,
				gfp_t gfp_mask)
{
	struct request *clone;
	struct dm_rq_target_io *tio;

	tio = FUNC0(md, gfp_mask);
	if (!tio)
		return NULL;

	tio->md = md;
	tio->ti = NULL;
	tio->orig = rq;
	tio->error = 0;
	FUNC2(&tio->info, 0, sizeof(tio->info));

	clone = &tio->clone;
	if (FUNC3(clone, rq, tio)) {
		/* -ENOMEM */
		FUNC1(tio);
		return NULL;
	}

	return clone;
}