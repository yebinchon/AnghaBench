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
struct mxcmci_host {scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ MMC_REG_RES_TO ; 
 scalar_t__ MMC_REG_STR_STP_CLK ; 
 int STR_STP_CLK_RESET ; 
 int STR_STP_CLK_START_CLK ; 
 int /*<<< orphan*/  FUNC0 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC1(struct mxcmci_host *host)
{
	int i;

	/* reset sequence */
	FUNC0(STR_STP_CLK_RESET, host->base + MMC_REG_STR_STP_CLK);
	FUNC0(STR_STP_CLK_RESET | STR_STP_CLK_START_CLK,
			host->base + MMC_REG_STR_STP_CLK);

	for (i = 0; i < 8; i++)
		FUNC0(STR_STP_CLK_START_CLK, host->base + MMC_REG_STR_STP_CLK);

	FUNC0(0xff, host->base + MMC_REG_RES_TO);
}