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
struct hifn_device {int dmareg; int /*<<< orphan*/  rngtime; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  HIFN_1_DMA_IER ; 
 int /*<<< orphan*/  HIFN_1_PUB_IEN ; 
 int /*<<< orphan*/  HIFN_1_PUB_RESET ; 
 int /*<<< orphan*/  HIFN_1_RNG_CONFIG ; 
 int /*<<< orphan*/  HIFN_1_RNG_DATA ; 
 int HIFN_DMAIER_PUBDONE ; 
 int HIFN_PUBIEN_DONE ; 
 int HIFN_PUBRST_RESET ; 
 int HIFN_RNGCFG_ENA ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct hifn_device*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hifn_device*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5(struct hifn_device *dev)
{
	int i;

	FUNC2(dev, HIFN_1_PUB_RESET, FUNC1(dev, HIFN_1_PUB_RESET) |
			HIFN_PUBRST_RESET);

	for (i=100; i > 0; --i) {
		FUNC4(1);

		if ((FUNC1(dev, HIFN_1_PUB_RESET) & HIFN_PUBRST_RESET) == 0)
			break;
	}

	if (!i)
		FUNC0("Chip %s: Failed to initialise public key engine.\n",
				dev->name);
	else {
		FUNC2(dev, HIFN_1_PUB_IEN, HIFN_PUBIEN_DONE);
		dev->dmareg |= HIFN_DMAIER_PUBDONE;
		FUNC2(dev, HIFN_1_DMA_IER, dev->dmareg);

		FUNC0("Chip %s: Public key engine has been sucessfully "
				"initialised.\n", dev->name);
	}

	/*
	 * Enable RNG engine.
	 */

	FUNC2(dev, HIFN_1_RNG_CONFIG,
			FUNC1(dev, HIFN_1_RNG_CONFIG) | HIFN_RNGCFG_ENA);
	FUNC0("Chip %s: RNG engine has been successfully initialised.\n",
			dev->name);

#ifdef CONFIG_CRYPTO_DEV_HIFN_795X_RNG
	/* First value must be discarded */
	hifn_read_1(dev, HIFN_1_RNG_DATA);
	dev->rngtime = ktime_get();
#endif
	return 0;
}