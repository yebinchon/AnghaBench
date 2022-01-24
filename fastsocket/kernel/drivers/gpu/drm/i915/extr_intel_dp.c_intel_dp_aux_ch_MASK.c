#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
struct intel_dp {int output_reg; } ;
struct TYPE_4__ {struct drm_device* dev; } ;
struct TYPE_5__ {TYPE_1__ base; } ;
struct intel_digital_port {int port; TYPE_2__ base; } ;
struct drm_i915_private {int /*<<< orphan*/  pm_qos; } ;
struct drm_device {struct drm_i915_private* dev_private; } ;
struct TYPE_6__ {int gen; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int DPA_AUX_CH_CTL ; 
 int DPA_AUX_CH_DATA1 ; 
 int DP_AUX_CH_CTL_BIT_CLOCK_2X_SHIFT ; 
 int DP_AUX_CH_CTL_DONE ; 
 int DP_AUX_CH_CTL_INTERRUPT ; 
 int DP_AUX_CH_CTL_MESSAGE_SIZE_MASK ; 
 int DP_AUX_CH_CTL_MESSAGE_SIZE_SHIFT ; 
 int DP_AUX_CH_CTL_PRECHARGE_2US_SHIFT ; 
 int DP_AUX_CH_CTL_RECEIVE_ERROR ; 
 int DP_AUX_CH_CTL_SEND_BUSY ; 
 int DP_AUX_CH_CTL_TIME_OUT_400us ; 
 int DP_AUX_CH_CTL_TIME_OUT_ERROR ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int EBUSY ; 
 int EIO ; 
 int ETIMEDOUT ; 
 scalar_t__ FUNC4 (struct drm_device*) ; 
 scalar_t__ FUNC5 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 TYPE_3__* FUNC9 (struct drm_device*) ; 
 scalar_t__ FUNC10 (struct drm_device*) ; 
 scalar_t__ FUNC11 (struct drm_device*) ; 
 scalar_t__ FUNC12 (struct drm_device*) ; 
 scalar_t__ FUNC13 (struct drm_device*) ; 
 int PCH_DPB_AUX_CH_CTL ; 
 int PCH_DPB_AUX_CH_DATA1 ; 
 int PCH_DPC_AUX_CH_CTL ; 
 int PCH_DPC_AUX_CH_DATA1 ; 
 int PCH_DPD_AUX_CH_CTL ; 
 int PCH_DPD_AUX_CH_DATA1 ; 
 int /*<<< orphan*/  PM_QOS_DEFAULT_VALUE ; 
#define  PORT_A 131 
#define  PORT_B 130 
#define  PORT_C 129 
#define  PORT_D 128 
 int /*<<< orphan*/  FUNC14 (int,char*,int /*<<< orphan*/ ) ; 
 struct intel_digital_port* FUNC15 (struct intel_dp*) ; 
 int FUNC16 (struct drm_i915_private*) ; 
 int FUNC17 (struct intel_dp*,int) ; 
 int /*<<< orphan*/  FUNC18 (struct intel_dp*) ; 
 int FUNC19 (struct drm_device*) ; 
 int /*<<< orphan*/  FUNC20 (struct drm_device*) ; 
 scalar_t__ FUNC21 (struct intel_dp*) ; 
 int /*<<< orphan*/  FUNC22 (int) ; 
 int FUNC23 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int
FUNC26(struct intel_dp *intel_dp,
		uint8_t *send, int send_bytes,
		uint8_t *recv, int recv_size)
{
	uint32_t output_reg = intel_dp->output_reg;
	struct intel_digital_port *intel_dig_port = FUNC15(intel_dp);
	struct drm_device *dev = intel_dig_port->base.base.dev;
	struct drm_i915_private *dev_priv = dev->dev_private;
	uint32_t ch_ctl = output_reg + 0x10;
	uint32_t ch_data = ch_ctl + 4;
	int i, ret, recv_bytes;
	uint32_t status;
	uint32_t aux_clock_divider;
	int try, precharge;
	bool has_aux_irq = FUNC9(dev)->gen >= 5 && !FUNC13(dev);

	/* dp aux is extremely sensitive to irq latency, hence request the
	 * lowest possible wakeup latency and so prevent the cpu from going into
	 * deep sleep states.
	 */
	FUNC24(&dev_priv->pm_qos, 0);

	if (FUNC12(dev)) {
		switch (intel_dig_port->port) {
		case PORT_A:
			ch_ctl = DPA_AUX_CH_CTL;
			ch_data = DPA_AUX_CH_DATA1;
			break;
		case PORT_B:
			ch_ctl = PCH_DPB_AUX_CH_CTL;
			ch_data = PCH_DPB_AUX_CH_DATA1;
			break;
		case PORT_C:
			ch_ctl = PCH_DPC_AUX_CH_CTL;
			ch_data = PCH_DPC_AUX_CH_DATA1;
			break;
		case PORT_D:
			ch_ctl = PCH_DPD_AUX_CH_CTL;
			ch_data = PCH_DPD_AUX_CH_DATA1;
			break;
		default:
			FUNC0();
		}
	}

	FUNC18(intel_dp);
	/* The clock divider is based off the hrawclk,
	 * and would like to run at 2MHz. So, take the
	 * hrawclk value and divide by 2 and use that
	 *
	 * Note that PCH attached eDP panels should use a 125MHz input
	 * clock divider.
	 */
	if (FUNC21(intel_dp)) {
		if (FUNC4(dev))
			aux_clock_divider = FUNC16(dev_priv) >> 1;
		else if (FUNC13(dev))
			aux_clock_divider = 100;
		else if (FUNC10(dev) || FUNC11(dev))
			aux_clock_divider = 200; /* SNB & IVB eDP input clock at 400Mhz */
		else
			aux_clock_divider = 225; /* eDP input clock at 450Mhz */
	} else if (FUNC5(dev))
		aux_clock_divider = FUNC1(FUNC20(dev), 2);
	else
		aux_clock_divider = FUNC19(dev) / 2;

	if (FUNC10(dev))
		precharge = 3;
	else
		precharge = 5;

	/* Try to wait for any previous AUX channel activity */
	for (try = 0; try < 3; try++) {
		status = FUNC7(ch_ctl);
		if ((status & DP_AUX_CH_CTL_SEND_BUSY) == 0)
			break;
		FUNC22(1);
	}

	if (try == 3) {
		FUNC14(1, "dp_aux_ch not started status 0x%08x\n",
		     FUNC6(ch_ctl));
		ret = -EBUSY;
		goto out;
	}

	/* Must try at least 3 times according to DP spec */
	for (try = 0; try < 5; try++) {
		/* Load the send data into the aux channel data registers */
		for (i = 0; i < send_bytes; i += 4)
			FUNC8(ch_data + i,
				   FUNC23(send + i, send_bytes - i));

		/* Send the command and wait for it to complete */
		FUNC8(ch_ctl,
			   DP_AUX_CH_CTL_SEND_BUSY |
			   (has_aux_irq ? DP_AUX_CH_CTL_INTERRUPT : 0) |
			   DP_AUX_CH_CTL_TIME_OUT_400us |
			   (send_bytes << DP_AUX_CH_CTL_MESSAGE_SIZE_SHIFT) |
			   (precharge << DP_AUX_CH_CTL_PRECHARGE_2US_SHIFT) |
			   (aux_clock_divider << DP_AUX_CH_CTL_BIT_CLOCK_2X_SHIFT) |
			   DP_AUX_CH_CTL_DONE |
			   DP_AUX_CH_CTL_TIME_OUT_ERROR |
			   DP_AUX_CH_CTL_RECEIVE_ERROR);

		status = FUNC17(intel_dp, has_aux_irq);

		/* Clear done status and any errors */
		FUNC8(ch_ctl,
			   status |
			   DP_AUX_CH_CTL_DONE |
			   DP_AUX_CH_CTL_TIME_OUT_ERROR |
			   DP_AUX_CH_CTL_RECEIVE_ERROR);

		if (status & (DP_AUX_CH_CTL_TIME_OUT_ERROR |
			      DP_AUX_CH_CTL_RECEIVE_ERROR))
			continue;
		if (status & DP_AUX_CH_CTL_DONE)
			break;
	}

	if ((status & DP_AUX_CH_CTL_DONE) == 0) {
		FUNC3("dp_aux_ch not done status 0x%08x\n", status);
		ret = -EBUSY;
		goto out;
	}

	/* Check for timeout or receive error.
	 * Timeouts occur when the sink is not connected
	 */
	if (status & DP_AUX_CH_CTL_RECEIVE_ERROR) {
		FUNC3("dp_aux_ch receive error status 0x%08x\n", status);
		ret = -EIO;
		goto out;
	}

	/* Timeouts occur when the device isn't connected, so they're
	 * "normal" -- don't fill the kernel log with these */
	if (status & DP_AUX_CH_CTL_TIME_OUT_ERROR) {
		FUNC2("dp_aux_ch timeout status 0x%08x\n", status);
		ret = -ETIMEDOUT;
		goto out;
	}

	/* Unload any bytes sent back from the other side */
	recv_bytes = ((status & DP_AUX_CH_CTL_MESSAGE_SIZE_MASK) >>
		      DP_AUX_CH_CTL_MESSAGE_SIZE_SHIFT);
	if (recv_bytes > recv_size)
		recv_bytes = recv_size;

	for (i = 0; i < recv_bytes; i += 4)
		FUNC25(FUNC6(ch_data + i),
			   recv + i, recv_bytes - i);

	ret = recv_bytes;
out:
	FUNC24(&dev_priv->pm_qos, PM_QOS_DEFAULT_VALUE);

	return ret;
}