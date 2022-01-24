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
struct deadline_data {int dummy; } ;
struct TYPE_2__ {struct deadline_data* elevator_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct deadline_data*,struct request*) ; 
 int /*<<< orphan*/  FUNC1 (struct request*) ; 

__attribute__((used)) static void FUNC2(struct request_queue *q, struct request *rq)
{
	struct deadline_data *dd = q->elevator->elevator_data;

	FUNC1(rq);
	FUNC0(dd, rq);
}