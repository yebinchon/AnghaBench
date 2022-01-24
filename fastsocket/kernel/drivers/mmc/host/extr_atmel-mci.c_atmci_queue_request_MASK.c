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
struct mmc_request {int dummy; } ;
struct atmel_mci_slot {int /*<<< orphan*/  queue_node; struct mmc_request* mrq; TYPE_1__* mmc; } ;
struct atmel_mci {scalar_t__ state; int /*<<< orphan*/  lock; int /*<<< orphan*/  queue; } ;
struct TYPE_2__ {int /*<<< orphan*/  class_dev; } ;

/* Variables and functions */
 scalar_t__ STATE_IDLE ; 
 scalar_t__ STATE_SENDING_CMD ; 
 int /*<<< orphan*/  FUNC0 (struct atmel_mci*,struct atmel_mci_slot*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct atmel_mci *host,
		struct atmel_mci_slot *slot, struct mmc_request *mrq)
{
	FUNC1(&slot->mmc->class_dev, "queue request: state=%d\n",
			host->state);

	FUNC3(&host->lock);
	slot->mrq = mrq;
	if (host->state == STATE_IDLE) {
		host->state = STATE_SENDING_CMD;
		FUNC0(host, slot);
	} else {
		FUNC2(&slot->queue_node, &host->queue);
	}
	FUNC4(&host->lock);
}