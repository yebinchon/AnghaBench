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
struct bio {scalar_t__ bi_sector; } ;
struct as_data {int /*<<< orphan*/ * sort_list; } ;
typedef  scalar_t__ sector_t ;
struct TYPE_2__ {struct as_data* elevator_data; } ;

/* Variables and functions */
 int ELEVATOR_FRONT_MERGE ; 
 int ELEVATOR_NO_MERGE ; 
 size_t FUNC0 (struct bio*) ; 
 scalar_t__ FUNC1 (struct bio*) ; 
 struct request* FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC3 (struct request*,struct bio*) ; 

__attribute__((used)) static int
FUNC4(struct request_queue *q, struct request **req, struct bio *bio)
{
	struct as_data *ad = q->elevator->elevator_data;
	sector_t rb_key = bio->bi_sector + FUNC1(bio);
	struct request *__rq;

	/*
	 * check for front merge
	 */
	__rq = FUNC2(&ad->sort_list[FUNC0(bio)], rb_key);
	if (__rq && FUNC3(__rq, bio)) {
		*req = __rq;
		return ELEVATOR_FRONT_MERGE;
	}

	return ELEVATOR_NO_MERGE;
}