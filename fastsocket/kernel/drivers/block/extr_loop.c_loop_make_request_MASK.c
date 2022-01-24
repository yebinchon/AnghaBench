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
struct request_queue {struct loop_device* queuedata; } ;
struct loop_device {scalar_t__ lo_state; int lo_flags; int /*<<< orphan*/  lo_lock; int /*<<< orphan*/  lo_event; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int LO_FLAGS_READ_ONLY ; 
 scalar_t__ Lo_bound ; 
 int READ ; 
 int READA ; 
 int WRITE ; 
 int /*<<< orphan*/  FUNC1 (struct bio*) ; 
 int FUNC2 (struct bio*) ; 
 int /*<<< orphan*/  FUNC3 (struct loop_device*,struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct request_queue *q, struct bio *old_bio)
{
	struct loop_device *lo = q->queuedata;
	int rw = FUNC2(old_bio);

	if (rw == READA)
		rw = READ;

	FUNC0(!lo || (rw != READ && rw != WRITE));

	FUNC4(&lo->lo_lock);
	if (lo->lo_state != Lo_bound)
		goto out;
	if (FUNC6(rw == WRITE && (lo->lo_flags & LO_FLAGS_READ_ONLY)))
		goto out;
	FUNC3(lo, old_bio);
	FUNC7(&lo->lo_event);
	FUNC5(&lo->lo_lock);
	return 0;

out:
	FUNC5(&lo->lo_lock);
	FUNC1(old_bio);
	return 0;
}