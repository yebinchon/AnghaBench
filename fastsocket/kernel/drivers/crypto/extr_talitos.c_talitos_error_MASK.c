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
typedef  int u32 ;
struct talitos_private {int num_channels; scalar_t__ reg; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int EIO ; 
 scalar_t__ FUNC0 (int) ; 
 int TALITOS_CCCR_CONT ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int TALITOS_CCPSR_LO_DOF ; 
 int TALITOS_CCPSR_LO_EU ; 
 int TALITOS_CCPSR_LO_FPZ ; 
 int TALITOS_CCPSR_LO_GB ; 
 int TALITOS_CCPSR_LO_GRL ; 
 int TALITOS_CCPSR_LO_IDH ; 
 int TALITOS_CCPSR_LO_IEU ; 
 int TALITOS_CCPSR_LO_MDTE ; 
 int TALITOS_CCPSR_LO_SB ; 
 int TALITOS_CCPSR_LO_SGDLZ ; 
 int TALITOS_CCPSR_LO_SOF ; 
 int TALITOS_CCPSR_LO_SRL ; 
 int TALITOS_ISR_CHERR ; 
 unsigned int TALITOS_TIMEOUT ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct device*,char*,...) ; 
 struct talitos_private* FUNC7 (struct device*) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,int,int,int) ; 
 int FUNC9 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct device*) ; 
 int /*<<< orphan*/  FUNC11 (struct device*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (struct device*,int) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__,int) ; 

__attribute__((used)) static void FUNC14(unsigned long data, u32 isr, u32 isr_lo)
{
	struct device *dev = (struct device *)data;
	struct talitos_private *priv = FUNC7(dev);
	unsigned int timeout = TALITOS_TIMEOUT;
	int ch, error, reset_dev = 0, reset_ch = 0;
	u32 v, v_lo;

	for (ch = 0; ch < priv->num_channels; ch++) {
		/* skip channels without errors */
		if (!(isr & (1 << (ch * 2 + 1))))
			continue;

		error = -EINVAL;

		v = FUNC9(priv->reg + FUNC2(ch));
		v_lo = FUNC9(priv->reg + FUNC3(ch));

		if (v_lo & TALITOS_CCPSR_LO_DOF) {
			FUNC6(dev, "double fetch fifo overflow error\n");
			error = -EAGAIN;
			reset_ch = 1;
		}
		if (v_lo & TALITOS_CCPSR_LO_SOF) {
			/* h/w dropped descriptor */
			FUNC6(dev, "single fetch fifo overflow error\n");
			error = -EAGAIN;
		}
		if (v_lo & TALITOS_CCPSR_LO_MDTE)
			FUNC6(dev, "master data transfer error\n");
		if (v_lo & TALITOS_CCPSR_LO_SGDLZ)
			FUNC6(dev, "s/g data length zero error\n");
		if (v_lo & TALITOS_CCPSR_LO_FPZ)
			FUNC6(dev, "fetch pointer zero error\n");
		if (v_lo & TALITOS_CCPSR_LO_IDH)
			FUNC6(dev, "illegal descriptor header error\n");
		if (v_lo & TALITOS_CCPSR_LO_IEU)
			FUNC6(dev, "invalid execution unit error\n");
		if (v_lo & TALITOS_CCPSR_LO_EU)
			FUNC11(dev, ch, FUNC5(dev, ch));
		if (v_lo & TALITOS_CCPSR_LO_GB)
			FUNC6(dev, "gather boundary error\n");
		if (v_lo & TALITOS_CCPSR_LO_GRL)
			FUNC6(dev, "gather return/length error\n");
		if (v_lo & TALITOS_CCPSR_LO_SB)
			FUNC6(dev, "scatter boundary error\n");
		if (v_lo & TALITOS_CCPSR_LO_SRL)
			FUNC6(dev, "scatter return/length error\n");

		FUNC8(dev, ch, error, reset_ch);

		if (reset_ch) {
			FUNC12(dev, ch);
		} else {
			FUNC13(priv->reg + FUNC0(ch),
				  TALITOS_CCCR_CONT);
			FUNC13(priv->reg + FUNC1(ch), 0);
			while ((FUNC9(priv->reg + FUNC0(ch)) &
			       TALITOS_CCCR_CONT) && --timeout)
				FUNC4();
			if (timeout == 0) {
				FUNC6(dev, "failed to restart channel %d\n",
					ch);
				reset_dev = 1;
			}
		}
	}
	if (reset_dev || isr & ~TALITOS_ISR_CHERR || isr_lo) {
		FUNC6(dev, "done overflow, internal time out, or rngu error: "
		        "ISR 0x%08x_%08x\n", isr, isr_lo);

		/* purge request queues */
		for (ch = 0; ch < priv->num_channels; ch++)
			FUNC8(dev, ch, -EIO, 1);

		/* reset and reinitialize the device */
		FUNC10(dev);
	}
}