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
struct TYPE_2__ {int /*<<< orphan*/  sw_q_depth; } ;
struct rsxx_dma_ctrl {int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  queue; TYPE_1__ stats; } ;
struct rsxx_dma {int /*<<< orphan*/  list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(struct rsxx_dma_ctrl *ctrl,
				 struct rsxx_dma *dma)
{
	/*
	 * Requeued DMAs go to the front of the queue so they are issued
	 * first.
	 */
	FUNC1(&ctrl->queue_lock);
	ctrl->stats.sw_q_depth++;
	FUNC0(&dma->list, &ctrl->queue);
	FUNC2(&ctrl->queue_lock);
}