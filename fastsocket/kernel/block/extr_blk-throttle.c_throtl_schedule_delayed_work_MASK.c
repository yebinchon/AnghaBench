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
struct delayed_work {int dummy; } ;
struct throtl_data {scalar_t__ limits_changed; struct delayed_work throtl_work; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct delayed_work*) ; 
 int /*<<< orphan*/  jiffies ; 
 int /*<<< orphan*/  kthrotld_workqueue ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct delayed_work*,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct throtl_data*,char*,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (struct throtl_data*) ; 

__attribute__((used)) static void
FUNC4(struct throtl_data *td, unsigned long delay)
{

	struct delayed_work *dwork = &td->throtl_work;

	/* schedule work if limits changed even if no bio is queued */
	if (FUNC3(td) > 0 || td->limits_changed) {
		/*
		 * We might have a work scheduled to be executed in future.
		 * Cancel that and schedule a new one.
		 */
		FUNC0(dwork);
		FUNC1(kthrotld_workqueue, dwork, delay);
		FUNC2(td, "schedule work. delay=%lu jiffies=%lu",
				delay, jiffies);
	}
}