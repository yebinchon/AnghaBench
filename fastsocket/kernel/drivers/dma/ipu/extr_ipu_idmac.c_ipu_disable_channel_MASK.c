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
typedef  unsigned long uint32_t ;
struct ipu {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; } ;
struct TYPE_2__ {int chan_id; } ;
struct idmac_channel {int /*<<< orphan*/  eof_irq; TYPE_1__ dma_chan; } ;
struct idmac {int dummy; } ;
typedef  enum ipu_channel { ____Placeholder_ipu_channel } ipu_channel ;

/* Variables and functions */
 int /*<<< orphan*/  IDMAC_CHA_BUSY ; 
 int /*<<< orphan*/  IDMAC_CHA_EN ; 
 int IDMAC_SDC_0 ; 
 int IDMAC_SDC_1 ; 
 int /*<<< orphan*/  IPU_CHA_BUF0_RDY ; 
 int /*<<< orphan*/  IPU_CHA_BUF1_RDY ; 
 int /*<<< orphan*/  IPU_TASKS_STAT ; 
 scalar_t__ TASK_STAT_ACTIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 unsigned long FUNC1 (struct ipu*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC2 (struct ipu*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct ipu*,unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct ipu*,unsigned long,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (struct ipu*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ipu*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 struct ipu* FUNC11 (struct idmac*) ; 

__attribute__((used)) static int FUNC12(struct idmac *idmac, struct idmac_channel *ichan,
			       bool wait_for_stop)
{
	enum ipu_channel channel = ichan->dma_chan.chan_id;
	struct ipu *ipu = FUNC11(idmac);
	uint32_t reg;
	unsigned long flags;
	unsigned long chan_mask = 1UL << channel;
	unsigned int timeout;

	if (wait_for_stop && channel != IDMAC_SDC_1 && channel != IDMAC_SDC_0) {
		timeout = 40;
		/* This waiting always fails. Related to spurious irq problem */
		while ((FUNC1(ipu, IDMAC_CHA_BUSY) & chan_mask) ||
		       (FUNC5(ipu, channel) == TASK_STAT_ACTIVE)) {
			timeout--;
			FUNC8(10);

			if (!timeout) {
				FUNC0(ipu->dev,
					"Warning: timeout waiting for channel %u to "
					"stop: buf0_rdy = 0x%08X, buf1_rdy = 0x%08X, "
					"busy = 0x%08X, tstat = 0x%08X\n", channel,
					FUNC2(ipu, IPU_CHA_BUF0_RDY),
					FUNC2(ipu, IPU_CHA_BUF1_RDY),
					FUNC1(ipu, IDMAC_CHA_BUSY),
					FUNC2(ipu, IPU_TASKS_STAT));
				break;
			}
		}
		FUNC0(ipu->dev, "timeout = %d * 10ms\n", 40 - timeout);
	}
	/* SDC BG and FG must be disabled before DMA is disabled */
	if (wait_for_stop && (channel == IDMAC_SDC_0 ||
			      channel == IDMAC_SDC_1)) {
		for (timeout = 5;
		     timeout && !FUNC7(ichan->eof_irq); timeout--)
			FUNC8(5);
	}

	FUNC9(&ipu->lock, flags);

	/* Disable IC task */
	FUNC6(ipu, channel);

	/* Disable DMA channel(s) */
	reg = FUNC1(ipu, IDMAC_CHA_EN);
	FUNC3(ipu, reg & ~chan_mask, IDMAC_CHA_EN);

	/*
	 * Problem (observed with channel DMAIC_7): after enabling the channel
	 * and initialising buffers, there comes an interrupt with current still
	 * pointing at buffer 0, whereas it should use buffer 0 first and only
	 * generate an interrupt when it is done, then current should already
	 * point to buffer 1. This spurious interrupt also comes on channel
	 * DMASDC_0. With DMAIC_7 normally, is we just leave the ISR after the
	 * first interrupt, there comes the second with current correctly
	 * pointing to buffer 1 this time. But sometimes this second interrupt
	 * doesn't come and the channel hangs. Clearing BUFx_RDY when disabling
	 * the channel seems to prevent the channel from hanging, but it doesn't
	 * prevent the spurious interrupt. This might also be unsafe. Think
	 * about the IDMAC controller trying to switch to a buffer, when we
	 * clear the ready bit, and re-enable it a moment later.
	 */
	reg = FUNC2(ipu, IPU_CHA_BUF0_RDY);
	FUNC4(ipu, 0, IPU_CHA_BUF0_RDY);
	FUNC4(ipu, reg & ~(1UL << channel), IPU_CHA_BUF0_RDY);

	reg = FUNC2(ipu, IPU_CHA_BUF1_RDY);
	FUNC4(ipu, 0, IPU_CHA_BUF1_RDY);
	FUNC4(ipu, reg & ~(1UL << channel), IPU_CHA_BUF1_RDY);

	FUNC10(&ipu->lock, flags);

	return 0;
}