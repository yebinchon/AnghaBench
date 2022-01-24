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
struct imxmci_host {int present; int /*<<< orphan*/  timer; int /*<<< orphan*/  stuck_timeout; int /*<<< orphan*/  tasklet; int /*<<< orphan*/  pending_events; int /*<<< orphan*/  mmc; TYPE_1__* pdata; } ;
struct TYPE_2__ {int (* card_present ) (int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  IMXMCI_PEND_CARD_XCHG_b ; 
 int /*<<< orphan*/  IMXMCI_PEND_DMA_DATA_b ; 
 int /*<<< orphan*/  IMXMCI_PEND_WAIT_RESP_b ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(unsigned long data)
{
	struct imxmci_host *host = (struct imxmci_host *)data;

	if (host->pdata && host->pdata->card_present &&
	    host->pdata->card_present(FUNC4(host->mmc)) != host->present) {
		host->present ^= 1;
		FUNC3(FUNC4(host->mmc), "card %s\n",
		      host->present ? "inserted" : "removed");

		FUNC6(IMXMCI_PEND_CARD_XCHG_b, &host->pending_events);
		FUNC8(&host->tasklet);
	}

	if (FUNC9(IMXMCI_PEND_WAIT_RESP_b, &host->pending_events) ||
	    FUNC9(IMXMCI_PEND_DMA_DATA_b, &host->pending_events)) {
		FUNC0(&host->stuck_timeout);
		if (FUNC1(&host->stuck_timeout) > 4)
			FUNC8(&host->tasklet);
	} else {
		FUNC2(&host->stuck_timeout, 0);

	}

	FUNC5(&host->timer, jiffies + (HZ>>1));
}