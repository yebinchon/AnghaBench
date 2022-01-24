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
struct request_queue {struct elevator_queue* elevator; int /*<<< orphan*/  queue_lock; } ;
struct elevator_type {int dummy; } ;
struct elevator_queue {TYPE_1__* elevator_type; scalar_t__ registered; int /*<<< orphan*/  kobj; } ;
struct TYPE_2__ {int /*<<< orphan*/  elevator_name; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (struct elevator_queue*) ; 
 int /*<<< orphan*/  FUNC1 (struct request_queue*,char*,int /*<<< orphan*/ ) ; 
 struct elevator_queue* FUNC2 (struct request_queue*,struct elevator_type*) ; 
 int /*<<< orphan*/  FUNC3 (struct request_queue*,struct elevator_queue*,void*) ; 
 int /*<<< orphan*/  FUNC4 (struct elevator_queue*) ; 
 void* FUNC5 (struct request_queue*,struct elevator_queue*) ; 
 int /*<<< orphan*/  FUNC6 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC7 (struct request_queue*) ; 
 int FUNC8 (struct request_queue*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct request_queue *q, struct elevator_type *new_e)
{
	struct elevator_queue *old_elevator, *e;
	void *data;
	int err;

	/*
	 * Allocate new elevator
	 */
	e = FUNC2(q, new_e);
	if (!e)
		return -ENOMEM;

	data = FUNC5(q, e);
	if (!data) {
		FUNC9(&e->kobj);
		return -ENOMEM;
	}

	/*
	 * Turn on BYPASS and drain all requests w/ elevator private data
	 */
	FUNC7(q);

	/*
	 * Remember old elevator.
	 */
	old_elevator = q->elevator;

	/*
	 * attach and start new elevator
	 */
	FUNC10(q->queue_lock);
	FUNC3(q, e, data);
	FUNC11(q->queue_lock);

	if (old_elevator->registered) {
		FUNC0(old_elevator);

		err = FUNC8(q);
		if (err)
			goto fail_register;
	}

	/*
	 * finally exit old elevator and turn off BYPASS.
	 */
	FUNC4(old_elevator);
	FUNC6(q);

	FUNC1(q, "elv switch: %s", e->elevator_type->elevator_name);

	return 0;

fail_register:
	/*
	 * switch failed, exit the new io scheduler and reattach the old
	 * one again (along with re-adding the sysfs dir)
	 */
	FUNC4(e);
	q->elevator = old_elevator;
	FUNC8(q);
	FUNC6(q);

	return err;
}