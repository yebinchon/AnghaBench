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
typedef  int /*<<< orphan*/  ulong ;
typedef  int u8 ;
struct nand_chip {int options; int chipsize; int chip_delay; int /*<<< orphan*/  (* dev_ready ) (struct mtd_info*) ;} ;
struct mtd_info {int writesize; struct nand_chip* priv; } ;

/* Variables and functions */
 int NAND_BUSWIDTH_16 ; 
#define  NAND_CMD_ERASE1 136 
#define  NAND_CMD_ERASE2 135 
#define  NAND_CMD_PAGEPROG 134 
#define  NAND_CMD_READ0 133 
#define  NAND_CMD_READ1 132 
#define  NAND_CMD_READOOB 131 
#define  NAND_CMD_RESET 130 
#define  NAND_CMD_SEQIN 129 
#define  NAND_CMD_STATUS 128 
 int /*<<< orphan*/  NAND_CTL_CLRALE ; 
 int /*<<< orphan*/  NAND_CTL_CLRCLE ; 
 int /*<<< orphan*/  NAND_CTL_CLRNCE ; 
 int /*<<< orphan*/  NAND_CTL_SETALE ; 
 int /*<<< orphan*/  NAND_CTL_SETCLE ; 
 int /*<<< orphan*/  NAND_CTL_SETNCE ; 
 int /*<<< orphan*/  FUNC0 (struct mtd_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mtd_info*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC6 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9(struct mtd_info *mtd, unsigned command, int column, int page_addr)
{
	register struct nand_chip *this = mtd->priv;
	int ce_override = 0, i;
	ulong flags;

	/* Begin command latch cycle */
	FUNC0(mtd, NAND_CTL_SETCLE);
	/*
	 * Write out the command to the device.
	 */
	if (command == NAND_CMD_SEQIN) {
		int readcmd;

		if (column >= mtd->writesize) {
			/* OOB area */
			column -= mtd->writesize;
			readcmd = NAND_CMD_READOOB;
		} else if (column < 256) {
			/* First 256 bytes --> READ0 */
			readcmd = NAND_CMD_READ0;
		} else {
			column -= 256;
			readcmd = NAND_CMD_READ1;
		}
		FUNC1(mtd, readcmd);
	}
	FUNC1(mtd, command);

	/* Set ALE and clear CLE to start address cycle */
	FUNC0(mtd, NAND_CTL_CLRCLE);

	if (column != -1 || page_addr != -1) {
		FUNC0(mtd, NAND_CTL_SETALE);

		/* Serially input address */
		if (column != -1) {
			/* Adjust columns for 16 bit buswidth */
			if (this->options & NAND_BUSWIDTH_16)
				column >>= 1;
			FUNC1(mtd, column);
		}
		if (page_addr != -1) {
			FUNC1(mtd, (u8)(page_addr & 0xff));

			if (command == NAND_CMD_READ0 ||
			    command == NAND_CMD_READ1 ||
			    command == NAND_CMD_READOOB) {
				/*
				 * NAND controller will release -CE after
				 * the last address byte is written, so we'll
				 * have to forcibly assert it. No interrupts
				 * are allowed while we do this as we don't
				 * want the NOR flash or PCMCIA drivers to
				 * steal our precious bytes of data...
				 */
				ce_override = 1;
				FUNC3(flags);
				FUNC0(mtd, NAND_CTL_SETNCE);
			}

			FUNC1(mtd, (u8)(page_addr >> 8));

			/* One more address cycle for devices > 32MiB */
			if (this->chipsize > (32 << 20))
				FUNC1(mtd, (u8)((page_addr >> 16) & 0x0f));
		}
		/* Latch in address */
		FUNC0(mtd, NAND_CTL_CLRALE);
	}

	/*
	 * Program and erase have their own busy handlers.
	 * Status and sequential in need no delay.
	 */
	switch (command) {

	case NAND_CMD_PAGEPROG:
	case NAND_CMD_ERASE1:
	case NAND_CMD_ERASE2:
	case NAND_CMD_SEQIN:
	case NAND_CMD_STATUS:
		return;

	case NAND_CMD_RESET:
		break;

	case NAND_CMD_READ0:
	case NAND_CMD_READ1:
	case NAND_CMD_READOOB:
		/* Check if we're really driving -CE low (just in case) */
		if (FUNC8(!ce_override))
			break;

		/* Apply a short delay always to ensure that we do wait tWB. */
		FUNC4(100);
		/* Wait for a chip to become ready... */
		for (i = this->chip_delay; !this->dev_ready(mtd) && i > 0; --i)
			FUNC7(1);

		/* Release -CE and re-enable interrupts. */
		FUNC0(mtd, NAND_CTL_CLRNCE);
		FUNC2(flags);
		return;
	}
	/* Apply this short delay always to ensure that we do wait tWB. */
	FUNC4(100);

	while(!this->dev_ready(mtd));
}