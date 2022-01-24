#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  buf; } ;
struct TYPE_3__ {int /*<<< orphan*/  dma_addr; int /*<<< orphan*/  buf; } ;
struct rsxx_dma_ctrl {TYPE_2__ cmd; TYPE_1__ status; int /*<<< orphan*/  trackers; int /*<<< orphan*/  queue_lock; int /*<<< orphan*/  queue; int /*<<< orphan*/  activity_timer; int /*<<< orphan*/ * done_wq; int /*<<< orphan*/ * issue_wq; } ;
struct rsxx_cardinfo {int n_targets; int /*<<< orphan*/  dev; struct rsxx_dma_ctrl* ctrl; } ;

/* Variables and functions */
 int /*<<< orphan*/  COMMAND_BUFFER_SIZE8 ; 
 int /*<<< orphan*/  COMPLETE_DMA ; 
 int /*<<< orphan*/  STATUS_BUFFER_SIZE8 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct rsxx_dma_ctrl*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct rsxx_dma_ctrl*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(struct rsxx_cardinfo *card)
{
	struct rsxx_dma_ctrl *ctrl;
	int i;

	for (i = 0; i < card->n_targets; i++) {
		ctrl = &card->ctrl[i];

		if (ctrl->issue_wq) {
			FUNC1(ctrl->issue_wq);
			ctrl->issue_wq = NULL;
		}

		if (ctrl->done_wq) {
			FUNC1(ctrl->done_wq);
			ctrl->done_wq = NULL;
		}

		if (FUNC7(&ctrl->activity_timer))
			FUNC0(&ctrl->activity_timer);

		/* Clean up the DMA queue */
		FUNC5(&ctrl->queue_lock);
		FUNC3(ctrl, &ctrl->queue, COMPLETE_DMA);
		FUNC6(&ctrl->queue_lock);

		FUNC4(ctrl);

		FUNC8(ctrl->trackers);

		FUNC2(card->dev, STATUS_BUFFER_SIZE8,
				    ctrl->status.buf, ctrl->status.dma_addr);
		FUNC2(card->dev, COMMAND_BUFFER_SIZE8,
				    ctrl->cmd.buf, ctrl->cmd.dma_addr);
	}
}