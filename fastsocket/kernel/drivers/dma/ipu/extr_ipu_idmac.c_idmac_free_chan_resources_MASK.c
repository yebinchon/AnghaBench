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
struct idmac_channel {scalar_t__ status; int /*<<< orphan*/  chan_mutex; int /*<<< orphan*/  eof_irq; } ;
struct idmac {int dummy; } ;
struct dma_chan {int chan_id; int /*<<< orphan*/  device; } ;
struct TYPE_2__ {int /*<<< orphan*/  tasklet; } ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 int IDMAC_IC_7 ; 
 scalar_t__ IPU_CHANNEL_FREE ; 
 int /*<<< orphan*/  FUNC0 (struct dma_chan*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct idmac_channel*) ; 
 int /*<<< orphan*/  ic_eof ; 
 int /*<<< orphan*/  ic_sof ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct idmac*,struct idmac_channel*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct idmac* FUNC7 (int /*<<< orphan*/ ) ; 
 struct idmac_channel* FUNC8 (struct dma_chan*) ; 
 TYPE_1__* FUNC9 (struct idmac*) ; 

__attribute__((used)) static void FUNC10(struct dma_chan *chan)
{
	struct idmac_channel *ichan = FUNC8(chan);
	struct idmac *idmac = FUNC7(chan->device);

	FUNC4(&ichan->chan_mutex);

	FUNC0(chan);

	if (ichan->status > IPU_CHANNEL_FREE) {
#ifdef DEBUG
		if (chan->chan_id == IDMAC_IC_7) {
			if (ic_sof > 0) {
				free_irq(ic_sof, ichan);
				ipu_irq_unmap(69);
				ic_sof = -EINVAL;
			}
			if (ic_eof > 0) {
				free_irq(ic_eof, ichan);
				ipu_irq_unmap(70);
				ic_eof = -EINVAL;
			}
		}
#endif
		FUNC1(ichan->eof_irq, ichan);
		FUNC2(chan->chan_id);
	}

	ichan->status = IPU_CHANNEL_FREE;

	FUNC3(idmac, ichan);

	FUNC5(&ichan->chan_mutex);

	FUNC6(&FUNC9(idmac)->tasklet);
}