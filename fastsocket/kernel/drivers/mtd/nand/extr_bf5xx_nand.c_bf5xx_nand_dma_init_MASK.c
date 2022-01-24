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
struct bf5xx_nand_info {int /*<<< orphan*/  device; int /*<<< orphan*/  dma_completion; } ;

/* Variables and functions */
 int /*<<< orphan*/  CH_NFC ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  bf5xx_nand_dma_irq ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  hardware_ecc ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bf5xx_nand_info*) ; 

__attribute__((used)) static int FUNC8(struct bf5xx_nand_info *info)
{
	int ret;

	/* Do not use dma */
	if (!hardware_ecc)
		return 0;

	FUNC5(&info->dma_completion);

	/* Request NFC DMA channel */
	ret = FUNC6(CH_NFC, "BF5XX NFC driver");
	if (ret < 0) {
		FUNC3(info->device, " unable to get DMA channel\n");
		return ret;
	}

#ifdef CONFIG_BF54x
	/* Setup DMAC1 channel mux for NFC which shared with SDH */
	bfin_write_DMAC1_PERIMUX(bfin_read_DMAC1_PERIMUX() & ~1);
	SSYNC();
#endif

	FUNC7(CH_NFC, bf5xx_nand_dma_irq, info);

	/* Turn off the DMA channel first */
	FUNC4(CH_NFC);
	return 0;
}