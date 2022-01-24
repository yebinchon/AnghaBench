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
struct TYPE_5__ {int (* read_page_raw ) (struct mtd_info*,struct nand_chip*,int /*<<< orphan*/ *,int) ;int (* read_subpage ) (struct mtd_info*,struct nand_chip*,int,int,int /*<<< orphan*/ *) ;int (* read_page ) (struct mtd_info*,struct nand_chip*,int /*<<< orphan*/ *,int) ;TYPE_1__* layout; } ;
struct nand_chip {int phys_erase_shift; int page_shift; int chip_shift; int pagemask; int pagebuf; int options; int /*<<< orphan*/  (* select_chip ) (struct mtd_info*,int) ;TYPE_3__* buffers; int /*<<< orphan*/  chip_delay; int /*<<< orphan*/  dev_ready; TYPE_2__ ecc; int /*<<< orphan*/  (* cmdfunc ) (struct mtd_info*,int /*<<< orphan*/ ,int,int) ;} ;
struct mtd_oob_ops {int len; int ooblen; scalar_t__ mode; int retlen; int oobretlen; int /*<<< orphan*/ * oobbuf; int /*<<< orphan*/ * datbuf; } ;
struct mtd_ecc_stats {scalar_t__ corrected; scalar_t__ failed; } ;
struct mtd_info {int writesize; int oobsize; struct mtd_ecc_stats ecc_stats; struct nand_chip* priv; } ;
typedef  int loff_t ;
struct TYPE_6__ {int /*<<< orphan*/ * databuf; } ;
struct TYPE_4__ {int oobavail; } ;

/* Variables and functions */
 int EBADMSG ; 
 int EUCLEAN ; 
 scalar_t__ MTD_OOB_RAW ; 
 int /*<<< orphan*/  FUNC0 (struct nand_chip*) ; 
 int /*<<< orphan*/  NAND_CMD_READ0 ; 
 int NAND_NO_READRDY ; 
 scalar_t__ FUNC1 (struct nand_chip*) ; 
 scalar_t__ FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int,int) ; 
 int /*<<< orphan*/ * FUNC5 (struct nand_chip*,int /*<<< orphan*/ *,struct mtd_oob_ops*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC7 (struct mtd_info*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct mtd_info*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC9 (struct mtd_info*,struct nand_chip*,int /*<<< orphan*/ *,int) ; 
 int FUNC10 (struct mtd_info*,struct nand_chip*,int,int,int /*<<< orphan*/ *) ; 
 int FUNC11 (struct mtd_info*,struct nand_chip*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (struct mtd_info*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct mtd_info*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC15 (int) ; 

__attribute__((used)) static int FUNC16(struct mtd_info *mtd, loff_t from,
			    struct mtd_oob_ops *ops)
{
	int chipnr, page, realpage, col, bytes, aligned;
	struct nand_chip *chip = mtd->priv;
	struct mtd_ecc_stats stats;
	int blkcheck = (1 << (chip->phys_erase_shift - chip->page_shift)) - 1;
	int sndcmd = 1;
	int ret = 0;
	uint32_t readlen = ops->len;
	uint32_t oobreadlen = ops->ooblen;
	uint8_t *bufpoi, *oob, *buf;

	stats = mtd->ecc_stats;

	chipnr = (int)(from >> chip->chip_shift);
	chip->select_chip(mtd, chipnr);

	realpage = (int)(from >> chip->page_shift);
	page = realpage & chip->pagemask;

	col = (int)(from & (mtd->writesize - 1));

	buf = ops->datbuf;
	oob = ops->oobbuf;

	while(1) {
		bytes = FUNC4(mtd->writesize - col, readlen);
		aligned = (bytes == mtd->writesize);

		/* Is the current page in the buffer ? */
		if (realpage != chip->pagebuf || oob) {
			bufpoi = aligned ? buf : chip->buffers->databuf;

			if (FUNC2(sndcmd)) {
				chip->cmdfunc(mtd, NAND_CMD_READ0, 0x00, page);
				sndcmd = 0;
			}

			/* Now read the page into the buffer */
			if (FUNC15(ops->mode == MTD_OOB_RAW))
				ret = chip->ecc.read_page_raw(mtd, chip,
							      bufpoi, page);
			else if (!aligned && FUNC1(chip) && !oob)
				ret = chip->ecc.read_subpage(mtd, chip, col, bytes, bufpoi);
			else
				ret = chip->ecc.read_page(mtd, chip, bufpoi,
							  page);
			if (ret < 0)
				break;

			/* Transfer not aligned data */
			if (!aligned) {
				if (!FUNC1(chip) && !oob)
					chip->pagebuf = realpage;
				FUNC3(buf, chip->buffers->databuf + col, bytes);
			}

			buf += bytes;

			if (FUNC15(*oob)) {
				/* Raw mode does data:oob:data:oob */
				if (ops->mode != MTD_OOB_RAW) {
					int toread = FUNC4(oobreadlen,
						chip->ecc.layout->oobavail);
					if (toread) {
						oob = FUNC5(chip,
							oob, ops, toread);
						oobreadlen -= toread;
					}
				} else
					buf = FUNC5(chip,
						buf, ops, mtd->oobsize);
			}

			if (!(chip->options & NAND_NO_READRDY)) {
				/*
				 * Apply delay or wait for ready/busy pin. Do
				 * this before the AUTOINCR check, so no
				 * problems arise if a chip which does auto
				 * increment is marked as NOAUTOINCR by the
				 * board driver.
				 */
				if (!chip->dev_ready)
					FUNC14(chip->chip_delay);
				else
					FUNC6(mtd);
			}
		} else {
			FUNC3(buf, chip->buffers->databuf + col, bytes);
			buf += bytes;
		}

		readlen -= bytes;

		if (!readlen)
			break;

		/* For subsequent reads align to page boundary. */
		col = 0;
		/* Increment page address */
		realpage++;

		page = realpage & chip->pagemask;
		/* Check, if we cross a chip boundary */
		if (!page) {
			chipnr++;
			chip->select_chip(mtd, -1);
			chip->select_chip(mtd, chipnr);
		}

		/* Check, if the chip supports auto page increment
		 * or if we have hit a block boundary.
		 */
		if (!FUNC0(chip) || !(page & blkcheck))
			sndcmd = 1;
	}

	ops->retlen = ops->len - (size_t) readlen;
	if (oob)
		ops->oobretlen = ops->ooblen - oobreadlen;

	if (ret)
		return ret;

	if (mtd->ecc_stats.failed - stats.failed)
		return -EBADMSG;

	return  mtd->ecc_stats.corrected - stats.corrected ? -EUCLEAN : 0;
}