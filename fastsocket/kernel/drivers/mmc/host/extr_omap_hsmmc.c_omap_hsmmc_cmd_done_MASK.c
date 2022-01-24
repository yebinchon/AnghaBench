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
struct omap_hsmmc_host {int /*<<< orphan*/  mmc; int /*<<< orphan*/ * mrq; int /*<<< orphan*/  response_busy; int /*<<< orphan*/ * data; int /*<<< orphan*/  base; int /*<<< orphan*/ * cmd; } ;
struct mmc_command {int flags; int /*<<< orphan*/  mrq; scalar_t__ error; void** resp; } ;

/* Variables and functions */
 int MMC_RSP_136 ; 
 int MMC_RSP_PRESENT ; 
 void* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RSP10 ; 
 int /*<<< orphan*/  RSP32 ; 
 int /*<<< orphan*/  RSP54 ; 
 int /*<<< orphan*/  RSP76 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC2(struct omap_hsmmc_host *host, struct mmc_command *cmd)
{
	host->cmd = NULL;

	if (cmd->flags & MMC_RSP_PRESENT) {
		if (cmd->flags & MMC_RSP_136) {
			/* response type 2 */
			cmd->resp[3] = FUNC0(host->base, RSP10);
			cmd->resp[2] = FUNC0(host->base, RSP32);
			cmd->resp[1] = FUNC0(host->base, RSP54);
			cmd->resp[0] = FUNC0(host->base, RSP76);
		} else {
			/* response types 1, 1b, 3, 4, 5, 6 */
			cmd->resp[0] = FUNC0(host->base, RSP10);
		}
	}
	if ((host->data == NULL && !host->response_busy) || cmd->error) {
		host->mrq = NULL;
		FUNC1(host->mmc, cmd->mrq);
	}
}