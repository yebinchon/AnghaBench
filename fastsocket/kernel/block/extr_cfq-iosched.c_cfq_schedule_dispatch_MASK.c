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
struct cfq_data {int /*<<< orphan*/  unplug_work; int /*<<< orphan*/  queue; scalar_t__ busy_queues; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cfq_data*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC2(struct cfq_data *cfqd)
{
	if (cfqd->busy_queues) {
		FUNC0(cfqd, "schedule dispatch");
		FUNC1(cfqd->queue, &cfqd->unplug_work);
	}
}