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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct ene_device {int tx_sample_pulse; int tx_sample; scalar_t__ tx_pos; scalar_t__ tx_len; int tx_done; int tx_reg; int /*<<< orphan*/  tx_sim_timer; int /*<<< orphan*/ * tx_buffer; int /*<<< orphan*/  tx_complete; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ENE_CIRRLC_OUT0 ; 
 int /*<<< orphan*/  ENE_CIRRLC_OUT1 ; 
 scalar_t__ ENE_CIRRLC_OUT_MASK ; 
 int ENE_CIRRLC_OUT_PULSE ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct ene_device*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (struct ene_device*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ jiffies ; 
 int FUNC6 (int,unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,scalar_t__) ; 
 int sample_period ; 
 scalar_t__ txsim ; 

__attribute__((used)) static void FUNC8(struct ene_device *dev)
{
	u8 raw_tx;
	u32 sample;
	bool pulse = dev->tx_sample_pulse;

	if (!dev->tx_buffer) {
		FUNC4("TX: BUG: attempt to transmit NULL buffer");
		return;
	}

	/* Grab next TX sample */
	if (!dev->tx_sample) {

		if (dev->tx_pos == dev->tx_len) {
			if (!dev->tx_done) {
				FUNC2("TX: no more data to send");
				dev->tx_done = true;
				goto exit;
			} else {
				FUNC2("TX: last sample sent by hardware");
				FUNC3(dev);
				FUNC1(&dev->tx_complete);
				return;
			}
		}

		sample = dev->tx_buffer[dev->tx_pos++];
		dev->tx_sample_pulse = !dev->tx_sample_pulse;

		dev->tx_sample = FUNC0(sample, sample_period);

		if (!dev->tx_sample)
			dev->tx_sample = 1;
	}

	raw_tx = FUNC6(dev->tx_sample , (unsigned int)ENE_CIRRLC_OUT_MASK);
	dev->tx_sample -= raw_tx;

	FUNC2("TX: sample %8d (%s)", raw_tx * sample_period,
						pulse ? "pulse" : "space");
	if (pulse)
		raw_tx |= ENE_CIRRLC_OUT_PULSE;

	FUNC5(dev,
		dev->tx_reg ? ENE_CIRRLC_OUT1 : ENE_CIRRLC_OUT0, raw_tx);

	dev->tx_reg = !dev->tx_reg;
exit:
	/* simulate TX done interrupt */
	if (txsim)
		FUNC7(&dev->tx_sim_timer, jiffies + HZ / 500);
}