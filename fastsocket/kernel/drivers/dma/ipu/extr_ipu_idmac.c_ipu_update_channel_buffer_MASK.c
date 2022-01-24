#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long uint32_t ;
struct TYPE_6__ {int chan_id; } ;
struct idmac_channel {void* status; TYPE_1__ dma_chan; } ;
typedef  enum ipu_channel { ____Placeholder_ipu_channel } ipu_channel ;
typedef  int dma_addr_t ;
struct TYPE_7__ {int /*<<< orphan*/  lock; } ;

/* Variables and functions */
 void* IPU_CHANNEL_READY ; 
 int /*<<< orphan*/  IPU_CHA_BUF0_RDY ; 
 int /*<<< orphan*/  IPU_CHA_BUF1_RDY ; 
 int /*<<< orphan*/  IPU_CHA_DB_MODE_SEL ; 
 int /*<<< orphan*/  IPU_IMA_ADDR ; 
 int /*<<< orphan*/  IPU_IMA_DATA ; 
 int FUNC0 (int) ; 
 unsigned long FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ ) ; 
 TYPE_2__ ipu_data ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC6(struct idmac_channel *ichan,
				     int buffer_n, dma_addr_t phyaddr)
{
	enum ipu_channel channel = ichan->dma_chan.chan_id;
	uint32_t reg;
	unsigned long flags;

	FUNC4(&ipu_data.lock, flags);

	if (buffer_n == 0) {
		reg = FUNC1(&ipu_data, IPU_CHA_BUF0_RDY);
		if (reg & (1UL << channel)) {
			FUNC3(&ipu_data, channel);
			ichan->status = IPU_CHANNEL_READY;
		}

		/* 44.3.3.1.9 - Row Number 1 (WORD1, offset 0) */
		FUNC2(&ipu_data, FUNC0(channel) +
				   0x0008UL, IPU_IMA_ADDR);
		FUNC2(&ipu_data, phyaddr, IPU_IMA_DATA);
	} else {
		reg = FUNC1(&ipu_data, IPU_CHA_BUF1_RDY);
		if (reg & (1UL << channel)) {
			FUNC3(&ipu_data, channel);
			ichan->status = IPU_CHANNEL_READY;
		}

		/* Check if double-buffering is already enabled */
		reg = FUNC1(&ipu_data, IPU_CHA_DB_MODE_SEL);

		if (!(reg & (1UL << channel)))
			FUNC2(&ipu_data, reg | (1UL << channel),
					   IPU_CHA_DB_MODE_SEL);

		/* 44.3.3.1.9 - Row Number 1 (WORD1, offset 1) */
		FUNC2(&ipu_data, FUNC0(channel) +
				   0x0009UL, IPU_IMA_ADDR);
		FUNC2(&ipu_data, phyaddr, IPU_IMA_DATA);
	}

	FUNC5(&ipu_data.lock, flags);

	return 0;
}