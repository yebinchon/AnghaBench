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
struct request_queue {TYPE_1__* elevator; } ;
struct request {int dummy; } ;
struct deadline_data {int /*<<< orphan*/ * sort_list; scalar_t__ front_merges; } ;
struct bio {scalar_t__ bi_sector; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_2__ {struct deadline_data* elevator_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int ELEVATOR_FRONT_MERGE ; 
 int ELEVATOR_NO_MERGE ; 
 size_t FUNC1 (struct bio*) ; 
 scalar_t__ FUNC2 (struct bio*) ; 
 scalar_t__ FUNC3 (struct request*) ; 
 struct request* FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (struct request*,struct bio*) ; 

__attribute__((used)) static int
FUNC6(struct request_queue *q, struct request **req, struct bio *bio)
{
	struct deadline_data *dd = q->elevator->elevator_data;
	struct request *__rq;
	int ret;

	/*
	 * check for front merge
	 */
	if (dd->front_merges) {
		sector_t sector = bio->bi_sector + FUNC2(bio);

		__rq = FUNC4(&dd->sort_list[FUNC1(bio)], sector);
		if (__rq) {
			FUNC0(sector != FUNC3(__rq));

			if (FUNC5(__rq, bio)) {
				ret = ELEVATOR_FRONT_MERGE;
				goto out;
			}
		}
	}

	return ELEVATOR_NO_MERGE;
out:
	*req = __rq;
	return ret;
}