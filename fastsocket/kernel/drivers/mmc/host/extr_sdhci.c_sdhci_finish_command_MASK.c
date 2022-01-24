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
struct sdhci_host {TYPE_1__* cmd; int /*<<< orphan*/  finish_tasklet; scalar_t__ data_early; scalar_t__ data; } ;
struct TYPE_2__ {int flags; int* resp; int /*<<< orphan*/  data; scalar_t__ error; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int MMC_RSP_136 ; 
 int MMC_RSP_PRESENT ; 
 scalar_t__ SDHCI_RESPONSE ; 
 int /*<<< orphan*/  FUNC1 (struct sdhci_host*) ; 
 int FUNC2 (struct sdhci_host*,scalar_t__) ; 
 int FUNC3 (struct sdhci_host*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(struct sdhci_host *host)
{
	int i;

	FUNC0(host->cmd == NULL);

	if (host->cmd->flags & MMC_RSP_PRESENT) {
		if (host->cmd->flags & MMC_RSP_136) {
			/* CRC is stripped so we need to do some shifting. */
			for (i = 0;i < 4;i++) {
				host->cmd->resp[i] = FUNC3(host,
					SDHCI_RESPONSE + (3-i)*4) << 8;
				if (i != 3)
					host->cmd->resp[i] |=
						FUNC2(host,
						SDHCI_RESPONSE + (3-i)*4-1);
			}
		} else {
			host->cmd->resp[0] = FUNC3(host, SDHCI_RESPONSE);
		}
	}

	host->cmd->error = 0;

	if (host->data && host->data_early)
		FUNC1(host);

	if (!host->cmd->data)
		FUNC4(&host->finish_tasklet);

	host->cmd = NULL;
}