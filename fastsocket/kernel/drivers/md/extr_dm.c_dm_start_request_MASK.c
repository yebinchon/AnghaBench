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
struct request {struct request* special; } ;
struct mapped_device {int /*<<< orphan*/ * pending; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 
 int /*<<< orphan*/  FUNC2 (struct mapped_device*) ; 
 size_t FUNC3 (struct request*) ; 

__attribute__((used)) static struct request *FUNC4(struct mapped_device *md, struct request *orig)
{
	struct request *clone;

	FUNC1(orig);
	clone = orig->special;
	FUNC0(&md->pending[FUNC3(clone)]);

	/*
	 * Hold the md reference here for the in-flight I/O.
	 * We can't rely on the reference count by device opener,
	 * because the device may be closed during the request completion
	 * when all bios are completed.
	 * See the comment in rq_completed() too.
	 */
	FUNC2(md);

	return clone;
}