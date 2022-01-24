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
struct elevator_queue {struct as_data* elevator_data; } ;
struct as_data {int /*<<< orphan*/  io_context; int /*<<< orphan*/ * fifo_list; int /*<<< orphan*/  antic_work; int /*<<< orphan*/  antic_timer; } ;

/* Variables and functions */
 size_t BLK_RW_ASYNC ; 
 size_t BLK_RW_SYNC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct as_data*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct elevator_queue *e)
{
	struct as_data *ad = e->elevator_data;

	FUNC2(&ad->antic_timer);
	FUNC1(&ad->antic_work);

	FUNC0(!FUNC4(&ad->fifo_list[BLK_RW_SYNC]));
	FUNC0(!FUNC4(&ad->fifo_list[BLK_RW_ASYNC]));

	FUNC5(ad->io_context);
	FUNC3(ad);
}