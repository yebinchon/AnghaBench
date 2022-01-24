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
typedef  int /*<<< orphan*/  u32 ;
struct imxmci_host {int /*<<< orphan*/  tasklet; int /*<<< orphan*/  pending_events; int /*<<< orphan*/  status_reg; int /*<<< orphan*/  stuck_timeout; scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMXMCI_PEND_DMA_END_b ; 
 scalar_t__ MMC_REG_STATUS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(int dma, void *devid)
{
	struct imxmci_host *host = devid;
	u32 stat = FUNC1(host->base + MMC_REG_STATUS);

	FUNC0(&host->stuck_timeout, 0);
	host->status_reg = stat;
	FUNC2(IMXMCI_PEND_DMA_END_b, &host->pending_events);
	FUNC3(&host->tasklet);
}