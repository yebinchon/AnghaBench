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
struct nand_chip {struct mxc_nand_host* priv; } ;
struct mxc_nand_host {int status_request; int col_addr; int spare_only; scalar_t__ pagesize_2k; } ;
struct mtd_info {int writesize; int size; struct nand_chip* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,unsigned int,int,int) ; 
 int /*<<< orphan*/  MTD_DEBUG_LEVEL3 ; 
#define  NAND_CMD_ERASE1 136 
#define  NAND_CMD_ERASE2 135 
#define  NAND_CMD_PAGEPROG 134 
#define  NAND_CMD_READ0 133 
#define  NAND_CMD_READID 132 
#define  NAND_CMD_READOOB 131 
 unsigned int NAND_CMD_READSTART ; 
#define  NAND_CMD_RESET 130 
#define  NAND_CMD_SEQIN 129 
#define  NAND_CMD_STATUS 128 
 int /*<<< orphan*/  FUNC1 (struct mxc_nand_host*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mxc_nand_host*,int const,int) ; 
 int /*<<< orphan*/  FUNC3 (struct mxc_nand_host*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (struct mxc_nand_host*) ; 
 int /*<<< orphan*/  FUNC5 (struct mxc_nand_host*,int,int) ; 

__attribute__((used)) static void FUNC6(struct mtd_info *mtd, unsigned command,
				int column, int page_addr)
{
	struct nand_chip *nand_chip = mtd->priv;
	struct mxc_nand_host *host = nand_chip->priv;
	int useirq = true;

	FUNC0(MTD_DEBUG_LEVEL3,
	      "mxc_nand_command (cmd = 0x%x, col = 0x%x, page = 0x%x)\n",
	      command, column, page_addr);

	/* Reset command state information */
	host->status_request = false;

	/* Command pre-processing step */
	switch (command) {

	case NAND_CMD_STATUS:
		host->col_addr = 0;
		host->status_request = true;
		break;

	case NAND_CMD_READ0:
		host->col_addr = column;
		host->spare_only = false;
		useirq = false;
		break;

	case NAND_CMD_READOOB:
		host->col_addr = column;
		host->spare_only = true;
		useirq = false;
		if (host->pagesize_2k)
			command = NAND_CMD_READ0; /* only READ0 is valid */
		break;

	case NAND_CMD_SEQIN:
		if (column >= mtd->writesize) {
			/*
			 * FIXME: before send SEQIN command for write OOB,
			 * We must read one page out.
			 * For K9F1GXX has no READ1 command to set current HW
			 * pointer to spare area, we must write the whole page
			 * including OOB together.
			 */
			if (host->pagesize_2k)
				/* call ourself to read a page */
				FUNC6(mtd, NAND_CMD_READ0, 0,
						page_addr);

			host->col_addr = column - mtd->writesize;
			host->spare_only = true;

			/* Set program pointer to spare region */
			if (!host->pagesize_2k)
				FUNC2(host, NAND_CMD_READOOB, false);
		} else {
			host->spare_only = false;
			host->col_addr = column;

			/* Set program pointer to page start */
			if (!host->pagesize_2k)
				FUNC2(host, NAND_CMD_READ0, false);
		}
		useirq = false;
		break;

	case NAND_CMD_PAGEPROG:
		FUNC3(host, 0, host->spare_only);

		if (host->pagesize_2k) {
			/* data in 4 areas datas */
			FUNC3(host, 1, host->spare_only);
			FUNC3(host, 2, host->spare_only);
			FUNC3(host, 3, host->spare_only);
		}

		break;

	case NAND_CMD_ERASE1:
		useirq = false;
		break;
	}

	/* Write out the command to the device. */
	FUNC2(host, command, useirq);

	/* Write out column address, if necessary */
	if (column != -1) {
		/*
		 * MXC NANDFC can only perform full page+spare or
		 * spare-only read/write.  When the upper layers
		 * layers perform a read/write buf operation,
		 * we will used the saved column adress to index into
		 * the full page.
		 */
		FUNC1(host, 0, page_addr == -1);
		if (host->pagesize_2k)
			/* another col addr cycle for 2k page */
			FUNC1(host, 0, false);
	}

	/* Write out page address, if necessary */
	if (page_addr != -1) {
		/* paddr_0 - p_addr_7 */
		FUNC1(host, (page_addr & 0xff), false);

		if (host->pagesize_2k) {
			if (mtd->size >= 0x10000000) {
				/* paddr_8 - paddr_15 */
				FUNC1(host, (page_addr >> 8) & 0xff, false);
				FUNC1(host, (page_addr >> 16) & 0xff, true);
			} else
				/* paddr_8 - paddr_15 */
				FUNC1(host, (page_addr >> 8) & 0xff, true);
		} else {
			/* One more address cycle for higher density devices */
			if (mtd->size >= 0x4000000) {
				/* paddr_8 - paddr_15 */
				FUNC1(host, (page_addr >> 8) & 0xff, false);
				FUNC1(host, (page_addr >> 16) & 0xff, true);
			} else
				/* paddr_8 - paddr_15 */
				FUNC1(host, (page_addr >> 8) & 0xff, true);
		}
	}

	/* Command post-processing step */
	switch (command) {

	case NAND_CMD_RESET:
		break;

	case NAND_CMD_READOOB:
	case NAND_CMD_READ0:
		if (host->pagesize_2k) {
			/* send read confirm command */
			FUNC2(host, NAND_CMD_READSTART, true);
			/* read for each AREA */
			FUNC5(host, 0, host->spare_only);
			FUNC5(host, 1, host->spare_only);
			FUNC5(host, 2, host->spare_only);
			FUNC5(host, 3, host->spare_only);
		} else
			FUNC5(host, 0, host->spare_only);
		break;

	case NAND_CMD_READID:
		host->col_addr = 0;
		FUNC4(host);
		break;

	case NAND_CMD_PAGEPROG:
		break;

	case NAND_CMD_STATUS:
		break;

	case NAND_CMD_ERASE2:
		break;
	}
}