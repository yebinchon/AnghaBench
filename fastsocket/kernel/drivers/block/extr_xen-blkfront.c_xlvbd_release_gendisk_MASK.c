#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct blkfront_info {TYPE_1__* gd; int /*<<< orphan*/ * rq; int /*<<< orphan*/  callback; } ;
struct TYPE_3__ {unsigned int first_minor; unsigned int minors; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  blkif_io_lock ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,unsigned int) ; 

__attribute__((used)) static void FUNC9(struct blkfront_info *info)
{
	unsigned int minor, nr_minors;
	unsigned long flags;

	if (info->rq == NULL)
		return;

	FUNC6(&blkif_io_lock, flags);

	/* No more blkif_request(). */
	FUNC1(info->rq);

	/* No more gnttab callback work. */
	FUNC4(&info->callback);
	FUNC7(&blkif_io_lock, flags);

	/* Flush gnttab callback work. Must be done with no locks held. */
	FUNC3();

	FUNC2(info->gd);

	minor = info->gd->first_minor;
	nr_minors = info->gd->minors;
	FUNC8(minor, nr_minors);

	FUNC0(info->rq);
	info->rq = NULL;

	FUNC5(info->gd);
	info->gd = NULL;
}