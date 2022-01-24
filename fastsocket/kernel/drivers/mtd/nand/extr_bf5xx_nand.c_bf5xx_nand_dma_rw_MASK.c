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
typedef  int /*<<< orphan*/  uint8_t ;
struct mtd_info {int dummy; } ;
struct bf5xx_nand_platform {short page_size; } ;
struct bf5xx_nand_info {int /*<<< orphan*/  dma_completion; int /*<<< orphan*/  device; struct bf5xx_nand_platform* platform; } ;

/* Variables and functions */
 int /*<<< orphan*/  CH_NFC ; 
 unsigned short DI_EN ; 
 int /*<<< orphan*/  FUNC0 () ; 
 unsigned short WDSIZE_16 ; 
 unsigned short WDSIZE_32 ; 
 unsigned short WNR ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,struct mtd_info*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned int,unsigned int) ; 
 struct bf5xx_nand_info* FUNC9 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,unsigned short) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC15(struct mtd_info *mtd,
				uint8_t *buf, int is_read)
{
	struct bf5xx_nand_info *info = FUNC9(mtd);
	struct bf5xx_nand_platform *plat = info->platform;
	unsigned short page_size = (plat->page_size ? 512 : 256);
	unsigned short val;

	FUNC4(info->device, " mtd->%p, buf->%p, is_read %d\n",
			mtd, buf, is_read);

	/*
	 * Before starting a dma transfer, be sure to invalidate/flush
	 * the cache over the address range of your DMA buffer to
	 * prevent cache coherency problems. Otherwise very subtle bugs
	 * can be introduced to your driver.
	 */
	if (is_read)
		FUNC8((unsigned int)buf,
				(unsigned int)(buf + page_size));
	else
		FUNC7((unsigned int)buf,
				(unsigned int)(buf + page_size));

	/*
	 * This register must be written before each page is
	 * transferred to generate the correct ECC register
	 * values.
	 */
	FUNC2(0x1);
	FUNC0();

	FUNC5(CH_NFC);
	FUNC3(CH_NFC);

	/* setup DMA register with Blackfin DMA API */
	FUNC10(CH_NFC, 0x0);
	FUNC11(CH_NFC, (unsigned long) buf);

/* The DMAs have different size on BF52x and BF54x */
#ifdef CONFIG_BF52x
	set_dma_x_count(CH_NFC, (page_size >> 1));
	set_dma_x_modify(CH_NFC, 2);
	val = DI_EN | WDSIZE_16;
#endif

#ifdef CONFIG_BF54x
	set_dma_x_count(CH_NFC, (page_size >> 2));
	set_dma_x_modify(CH_NFC, 4);
	val = DI_EN | WDSIZE_32;
#endif
	/* setup write or read operation */
	if (is_read)
		val |= WNR;
	FUNC10(CH_NFC, val);
	FUNC6(CH_NFC);

	/* Start PAGE read/write operation */
	if (is_read)
		FUNC1(0x1);
	else
		FUNC1(0x2);
	FUNC14(&info->dma_completion);
}