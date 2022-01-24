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
struct bf5xx_nand_platform {int page_size; int data_width; unsigned short rd_dly; int /*<<< orphan*/  wr_dly; } ;
struct bf5xx_nand_info {int /*<<< orphan*/  device; struct bf5xx_nand_platform* platform; } ;

/* Variables and functions */
 int ENXIO ; 
 unsigned short NFC_NWIDTH_OFFSET ; 
 unsigned short NFC_PG_SIZE_OFFSET ; 
 unsigned short NFC_RDDLY_OFFSET ; 
 unsigned short NFC_WRDLY_OFFSET ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (struct bf5xx_nand_info*) ; 
 unsigned short FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned short) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned short) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,unsigned short) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,int,int /*<<< orphan*/ ,unsigned short) ; 

__attribute__((used)) static int FUNC8(struct bf5xx_nand_info *info)
{
	int err = 0;
	unsigned short val;
	struct bf5xx_nand_platform *plat = info->platform;

	/* setup NFC_CTL register */
	FUNC7(info->device,
		"page_size=%d, data_width=%d, wr_dly=%d, rd_dly=%d\n",
		(plat->page_size ? 512 : 256),
		(plat->data_width ? 16 : 8),
		plat->wr_dly, plat->rd_dly);

	val = (plat->page_size << NFC_PG_SIZE_OFFSET) |
		(plat->data_width << NFC_NWIDTH_OFFSET) |
		(plat->rd_dly << NFC_RDDLY_OFFSET) |
		(plat->rd_dly << NFC_WRDLY_OFFSET);
	FUNC6(info->device, "NFC_CTL is 0x%04x\n", val);

	FUNC3(val);
	FUNC0();

	/* clear interrupt status */
	FUNC4(0x0);
	FUNC0();
	val = FUNC2();
	FUNC5(val);
	FUNC0();

	/* DMA initialization  */
	if (FUNC1(info))
		err = -ENXIO;

	return err;
}