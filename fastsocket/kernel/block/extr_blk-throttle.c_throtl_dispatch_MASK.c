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
struct throtl_data {int /*<<< orphan*/ * nr_queued; } ;
struct request_queue {int /*<<< orphan*/  queue_lock; struct throtl_data* td; } ;
struct bio_list {int dummy; } ;
struct bio {int dummy; } ;

/* Variables and functions */
 size_t READ ; 
 size_t WRITE ; 
 int /*<<< orphan*/  FUNC0 (struct bio_list*) ; 
 struct bio* FUNC1 (struct bio_list*) ; 
 int /*<<< orphan*/  FUNC2 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC3 (struct bio*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct throtl_data*,char*,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC7 (struct throtl_data*) ; 
 int /*<<< orphan*/  FUNC8 (struct throtl_data*) ; 
 unsigned int FUNC9 (struct throtl_data*,struct bio_list*) ; 
 int /*<<< orphan*/  FUNC10 (struct throtl_data*) ; 

__attribute__((used)) static int FUNC11(struct request_queue *q)
{
	struct throtl_data *td = q->td;
	unsigned int nr_disp = 0;
	struct bio_list bio_list_on_stack;
	struct bio *bio;

	FUNC4(q->queue_lock);

	FUNC7(td);

	if (!FUNC10(td))
		goto out;

	FUNC0(&bio_list_on_stack);

	FUNC6(td, "dispatch nr_queued=%lu read=%u write=%u",
			FUNC10(td), td->nr_queued[READ],
			td->nr_queued[WRITE]);

	nr_disp = FUNC9(td, &bio_list_on_stack);

	if (nr_disp)
		FUNC6(td, "bios disp=%u", nr_disp);

	FUNC8(td);
out:
	FUNC5(q->queue_lock);

	/*
	 * If we dispatched some requests, unplug the queue to make sure
	 * immediate dispatch
	 */
	if (nr_disp) {
		while((bio = FUNC1(&bio_list_on_stack)))
			FUNC3(bio);
		FUNC2(q);
	}
	return nr_disp;
}