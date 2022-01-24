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
typedef  int u32 ;
struct au1550_spi {void* rx_count; void* len; void* tx_count; int /*<<< orphan*/  master_done; int /*<<< orphan*/  dev; int /*<<< orphan*/  dma_tx_ch; int /*<<< orphan*/  dma_rx_ch; TYPE_1__* regs; } ;
typedef  int /*<<< orphan*/  irqreturn_t ;
struct TYPE_2__ {int psc_spistat; int psc_spievent; } ;

/* Variables and functions */
 int /*<<< orphan*/  IRQ_HANDLED ; 
 int /*<<< orphan*/  IRQ_NONE ; 
 int PSC_SPIEVNT_MD ; 
 int PSC_SPIEVNT_MM ; 
 int PSC_SPIEVNT_RO ; 
 int PSC_SPIEVNT_RU ; 
 int PSC_SPIEVNT_SD ; 
 int PSC_SPIEVNT_TO ; 
 int PSC_SPIEVNT_TU ; 
 int PSC_SPISTAT_DI ; 
 int /*<<< orphan*/  FUNC0 (struct au1550_spi*) ; 
 int /*<<< orphan*/  FUNC1 (struct au1550_spi*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static irqreturn_t FUNC8(struct au1550_spi *hw)
{
	u32 stat, evnt;

	stat = hw->regs->psc_spistat;
	evnt = hw->regs->psc_spievent;
	FUNC5();
	if ((stat & PSC_SPISTAT_DI) == 0) {
		FUNC7(hw->dev, "Unexpected IRQ!\n");
		return IRQ_NONE;
	}

	if ((evnt & (PSC_SPIEVNT_MM | PSC_SPIEVNT_RO
				| PSC_SPIEVNT_RU | PSC_SPIEVNT_TO
				| PSC_SPIEVNT_TU | PSC_SPIEVNT_SD))
			!= 0) {
		/*
		 * due to an spi error we consider transfer as done,
		 * so mask all events until before next transfer start
		 * and stop the possibly running dma immediatelly
		 */
		FUNC0(hw);
		FUNC3(hw->dma_rx_ch);
		FUNC3(hw->dma_tx_ch);

		/* get number of transfered bytes */
		hw->rx_count = hw->len - FUNC4(hw->dma_rx_ch);
		hw->tx_count = hw->len - FUNC4(hw->dma_tx_ch);

		FUNC2(hw->dma_rx_ch);
		FUNC2(hw->dma_tx_ch);
		FUNC1(hw);

		if (evnt == PSC_SPIEVNT_RO)
			FUNC7(hw->dev,
				"dma transfer: receive FIFO overflow!\n");
		else
			FUNC7(hw->dev,
				"dma transfer: unexpected SPI error "
				"(event=0x%x stat=0x%x)!\n", evnt, stat);

		FUNC6(&hw->master_done);
		return IRQ_HANDLED;
	}

	if ((evnt & PSC_SPIEVNT_MD) != 0) {
		/* transfer completed successfully */
		FUNC0(hw);
		hw->rx_count = hw->len;
		hw->tx_count = hw->len;
		FUNC6(&hw->master_done);
	}
	return IRQ_HANDLED;
}