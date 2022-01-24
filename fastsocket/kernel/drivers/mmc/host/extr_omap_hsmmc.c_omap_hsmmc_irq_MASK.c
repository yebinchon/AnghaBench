#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct omap_hsmmc_host {int /*<<< orphan*/  irq_lock; TYPE_2__* mrq; TYPE_3__* cmd; int /*<<< orphan*/  base; struct mmc_data* data; int /*<<< orphan*/  mmc; scalar_t__ response_busy; } ;
struct mmc_data {int dummy; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_6__ {int error; int opcode; } ;
struct TYPE_5__ {TYPE_1__* cmd; } ;
struct TYPE_4__ {int error; } ;

/* Variables and functions */
 int CARD_ERR ; 
 int CC ; 
 int CMD_CRC ; 
 int CMD_TIMEOUT ; 
 int DATA_CRC ; 
 int DATA_TIMEOUT ; 
 int EILSEQ ; 
 int ERR ; 
 int ETIMEDOUT ; 
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SRC ; 
 int /*<<< orphan*/  SRD ; 
 int /*<<< orphan*/  STAT ; 
 int TC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct omap_hsmmc_host*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (struct omap_hsmmc_host*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct omap_hsmmc_host*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct omap_hsmmc_host*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct omap_hsmmc_host*,struct mmc_data*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static irqreturn_t FUNC11(int irq, void *dev_id)
{
	struct omap_hsmmc_host *host = dev_id;
	struct mmc_data *data;
	int end_cmd = 0, end_trans = 0, status;

	FUNC9(&host->irq_lock);

	if (host->mrq == NULL) {
		FUNC1(host->base, STAT,
			FUNC0(host->base, STAT));
		/* Flush posted write */
		FUNC0(host->base, STAT);
		FUNC10(&host->irq_lock);
		return IRQ_HANDLED;
	}

	data = host->data;
	status = FUNC0(host->base, STAT);
	FUNC2(FUNC3(host->mmc), "IRQ Status is %x\n", status);

	if (status & ERR) {
#ifdef CONFIG_MMC_DEBUG
		omap_hsmmc_report_irq(host, status);
#endif
		if ((status & CMD_TIMEOUT) ||
			(status & CMD_CRC)) {
			if (host->cmd) {
				if (status & CMD_TIMEOUT) {
					FUNC7(host,
									SRC);
					host->cmd->error = -ETIMEDOUT;
				} else {
					host->cmd->error = -EILSEQ;
				}
				end_cmd = 1;
			}
			if (host->data || host->response_busy) {
				if (host->data)
					FUNC5(host,
								-ETIMEDOUT);
				host->response_busy = 0;
				FUNC7(host, SRD);
			}
		}
		if ((status & DATA_TIMEOUT) ||
			(status & DATA_CRC)) {
			if (host->data || host->response_busy) {
				int err = (status & DATA_TIMEOUT) ?
						-ETIMEDOUT : -EILSEQ;

				if (host->data)
					FUNC5(host, err);
				else
					host->mrq->cmd->error = err;
				host->response_busy = 0;
				FUNC7(host, SRD);
				end_trans = 1;
			}
		}
		if (status & CARD_ERR) {
			FUNC2(FUNC3(host->mmc),
				"Ignoring card err CMD%d\n", host->cmd->opcode);
			if (host->cmd)
				end_cmd = 1;
			if (host->data)
				end_trans = 1;
		}
	}

	FUNC1(host->base, STAT, status);
	/* Flush posted write */
	FUNC0(host->base, STAT);

	if (end_cmd || ((status & CC) && host->cmd))
		FUNC4(host, host->cmd);
	if ((end_trans || (status & TC)) && host->mrq)
		FUNC8(host, data);

	FUNC10(&host->irq_lock);

	return IRQ_HANDLED;
}