#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct peespi {int misc_ctrl; int /*<<< orphan*/  lock; TYPE_2__* adapter; } ;
struct TYPE_8__ {int nports; } ;
struct TYPE_9__ {scalar_t__ regs; TYPE_1__ params; } ;
typedef  TYPE_2__ adapter_t ;

/* Variables and functions */
 scalar_t__ A_ESPI_FIFO_STATUS_ENABLE ; 
 scalar_t__ A_ESPI_MAXBURST1_MAXBURST2 ; 
 scalar_t__ A_ESPI_MISC_CONTROL ; 
 scalar_t__ A_ESPI_TRAIN ; 
 int CHBT_MAC_IXF1010 ; 
 int CHBT_MAC_PM3393 ; 
 int CHBT_MAC_VSC7321 ; 
 int F_INTEL1010MODE ; 
 int F_MONITORED_DIRECTION ; 
 int F_MONITORED_INTERFACE ; 
 int F_RXSTATUSENABLE ; 
 int MON_MASK ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 scalar_t__ FUNC6 (TYPE_2__*) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int,scalar_t__) ; 

int FUNC11(struct peespi *espi, int mac_type, int nports)
{
	u32 status_enable_extra = 0;
	adapter_t *adapter = espi->adapter;

	/* Disable ESPI training.  MACs that can handle it enable it below. */
	FUNC10(0, adapter->regs + A_ESPI_TRAIN);

	if (FUNC6(adapter)) {
		FUNC10(FUNC2(4) |
		       FUNC0(3) |
		       FUNC1(1), adapter->regs + A_ESPI_MISC_CONTROL);
		FUNC10(nports == 4 ? 0x200040 : 0x1000080,
		       adapter->regs + A_ESPI_MAXBURST1_MAXBURST2);
	} else
		FUNC10(0x800100, adapter->regs + A_ESPI_MAXBURST1_MAXBURST2);

	if (mac_type == CHBT_MAC_PM3393)
		FUNC4(adapter);
	else if (mac_type == CHBT_MAC_VSC7321)
		FUNC5(adapter);
	else if (mac_type == CHBT_MAC_IXF1010) {
		status_enable_extra = F_INTEL1010MODE;
		FUNC3(adapter, nports);
	} else
		return -1;

	FUNC10(status_enable_extra | F_RXSTATUSENABLE,
	       adapter->regs + A_ESPI_FIFO_STATUS_ENABLE);

	if (FUNC6(adapter)) {
		FUNC9(adapter);
		/*
		 * Always position the control at the 1st port egress IN
		 * (sop,eop) counter to reduce PIOs for T/N210 workaround.
		 */
		espi->misc_ctrl = FUNC7(adapter->regs + A_ESPI_MISC_CONTROL);
		espi->misc_ctrl &= ~MON_MASK;
		espi->misc_ctrl |= F_MONITORED_DIRECTION;
		if (adapter->params.nports == 1)
			espi->misc_ctrl |= F_MONITORED_INTERFACE;
		FUNC10(espi->misc_ctrl, adapter->regs + A_ESPI_MISC_CONTROL);
		FUNC8(&espi->lock);
	}

	return 0;
}