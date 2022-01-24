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
struct talitos_private {int num_channels; int features; scalar_t__ reg; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int TALITOS_FTR_HW_AUTH_CHECK ; 
 scalar_t__ TALITOS_IMR ; 
 int /*<<< orphan*/  TALITOS_IMR_INIT ; 
 scalar_t__ TALITOS_IMR_LO ; 
 int /*<<< orphan*/  TALITOS_IMR_LO_INIT ; 
 scalar_t__ TALITOS_MDEUICR_LO ; 
 int /*<<< orphan*/  TALITOS_MDEUICR_LO_ICE ; 
 struct talitos_private* FUNC0 (struct device*) ; 
 int FUNC1 (struct device*,int) ; 
 int FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(struct device *dev)
{
	struct talitos_private *priv = FUNC0(dev);
	int ch, err;

	/*
	 * Master reset
	 * errata documentation: warning: certain SEC interrupts
	 * are not fully cleared by writing the MCR:SWR bit,
	 * set bit twice to completely reset
	 */
	err = FUNC2(dev);
	if (err)
		return err;

	err = FUNC2(dev);
	if (err)
		return err;

	/* reset channels */
	for (ch = 0; ch < priv->num_channels; ch++) {
		err = FUNC1(dev, ch);
		if (err)
			return err;
	}

	/* enable channel done and error interrupts */
	FUNC3(priv->reg + TALITOS_IMR, TALITOS_IMR_INIT);
	FUNC3(priv->reg + TALITOS_IMR_LO, TALITOS_IMR_LO_INIT);

	/* disable integrity check error interrupts (use writeback instead) */
	if (priv->features & TALITOS_FTR_HW_AUTH_CHECK)
		FUNC3(priv->reg + TALITOS_MDEUICR_LO,
		          TALITOS_MDEUICR_LO_ICE);

	return 0;
}