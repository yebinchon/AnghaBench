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
struct request {int dummy; } ;
struct as_data {void** last_check_fifo; long* fifo_expire; TYPE_1__* fifo_list; } ;
struct TYPE_2__ {int /*<<< orphan*/  next; } ;

/* Variables and functions */
 void* jiffies ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 struct request* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct request*) ; 
 int FUNC3 (void*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct as_data *ad, int adir)
{
	struct request *rq;
	long delta_jif;

	delta_jif = jiffies - ad->last_check_fifo[adir];
	if (FUNC4(delta_jif < 0))
		delta_jif = -delta_jif;
	if (delta_jif < ad->fifo_expire[adir])
		return 0;

	ad->last_check_fifo[adir] = jiffies;

	if (FUNC0(&ad->fifo_list[adir]))
		return 0;

	rq = FUNC1(ad->fifo_list[adir].next);

	return FUNC3(jiffies, FUNC2(rq));
}