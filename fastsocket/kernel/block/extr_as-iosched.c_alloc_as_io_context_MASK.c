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
struct as_io_context {int state; scalar_t__ seek_mean; scalar_t__ seek_samples; scalar_t__ seek_total; scalar_t__ ttime_mean; scalar_t__ ttime_samples; scalar_t__ ttime_total; int /*<<< orphan*/  lock; int /*<<< orphan*/  nr_dispatched; int /*<<< orphan*/  nr_queued; int /*<<< orphan*/  exit; int /*<<< orphan*/  dtor; } ;

/* Variables and functions */
 int AS_TASK_RUNNING ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int /*<<< orphan*/  as_ioc_count ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  exit_as_io_context ; 
 int /*<<< orphan*/  free_as_io_context ; 
 struct as_io_context* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct as_io_context *FUNC4(void)
{
	struct as_io_context *ret;

	ret = FUNC2(sizeof(*ret), GFP_ATOMIC);
	if (ret) {
		ret->dtor = free_as_io_context;
		ret->exit = exit_as_io_context;
		ret->state = 1 << AS_TASK_RUNNING;
		FUNC0(&ret->nr_queued, 0);
		FUNC0(&ret->nr_dispatched, 0);
		FUNC3(&ret->lock);
		ret->ttime_total = 0;
		ret->ttime_samples = 0;
		ret->ttime_mean = 0;
		ret->seek_total = 0;
		ret->seek_samples = 0;
		ret->seek_mean = 0;
		FUNC1(as_ioc_count);
	}

	return ret;
}