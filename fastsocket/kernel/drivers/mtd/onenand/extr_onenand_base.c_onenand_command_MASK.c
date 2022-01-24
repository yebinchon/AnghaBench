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
struct onenand_chip {int density_mask; int page_shift; int writesize; int page_mask; scalar_t__ base; int /*<<< orphan*/  (* write_word ) (int,scalar_t__) ;} ;
struct mtd_info {struct onenand_chip* priv; } ;
typedef  int loff_t ;

/* Variables and functions */
#define  FLEXONENAND_CMD_PI_ACCESS 139 
#define  FLEXONENAND_CMD_READ_PI 138 
#define  FLEXONENAND_CMD_RECOVER_LSB 137 
 int ONENAND_CMD_2X_PROG ; 
#define  ONENAND_CMD_BUFFERRAM 136 
#define  ONENAND_CMD_ERASE 135 
#define  ONENAND_CMD_LOCK 134 
#define  ONENAND_CMD_LOCK_TIGHT 133 
#define  ONENAND_CMD_OTP_ACCESS 132 
 int ONENAND_CMD_PROG ; 
#define  ONENAND_CMD_READ 131 
#define  ONENAND_CMD_READOOB 130 
#define  ONENAND_CMD_UNLOCK 129 
#define  ONENAND_CMD_UNLOCK_ALL 128 
 int FUNC0 (struct onenand_chip*) ; 
 int ONENAND_INT_CLEAR ; 
 scalar_t__ FUNC1 (struct onenand_chip*) ; 
 scalar_t__ FUNC2 (struct onenand_chip*) ; 
 scalar_t__ ONENAND_REG_COMMAND ; 
 scalar_t__ ONENAND_REG_INTERRUPT ; 
 scalar_t__ ONENAND_REG_START_ADDRESS1 ; 
 scalar_t__ ONENAND_REG_START_ADDRESS2 ; 
 scalar_t__ ONENAND_REG_START_ADDRESS8 ; 
 scalar_t__ ONENAND_REG_START_BUFFER ; 
 int FUNC3 (struct onenand_chip*) ; 
 int FUNC4 (struct onenand_chip*) ; 
 int FUNC5 (struct onenand_chip*,int) ; 
 int FUNC6 (struct onenand_chip*,int) ; 
 int FUNC7 (struct onenand_chip*,int) ; 
 int FUNC8 (int,int,int) ; 
 int FUNC9 (struct onenand_chip*,int) ; 
 int FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC18(struct mtd_info *mtd, int cmd, loff_t addr, size_t len)
{
	struct onenand_chip *this = mtd->priv;
	int value, block, page;

	/* Address translation */
	switch (cmd) {
	case ONENAND_CMD_UNLOCK:
	case ONENAND_CMD_LOCK:
	case ONENAND_CMD_LOCK_TIGHT:
	case ONENAND_CMD_UNLOCK_ALL:
		block = -1;
		page = -1;
		break;

	case FLEXONENAND_CMD_PI_ACCESS:
		/* addr contains die index */
		block = addr * this->density_mask;
		page = -1;
		break;

	case ONENAND_CMD_ERASE:
	case ONENAND_CMD_BUFFERRAM:
	case ONENAND_CMD_OTP_ACCESS:
		block = FUNC6(this, addr);
		page = -1;
		break;

	case FLEXONENAND_CMD_READ_PI:
		cmd = ONENAND_CMD_READ;
		block = addr * this->density_mask;
		page = 0;
		break;

	default:
		block = FUNC6(this, addr);
		page = (int) (addr - FUNC5(this, block)) >> this->page_shift;

		if (FUNC1(this)) {
			/* Make the even block number */
			block &= ~1;
			/* Is it the odd plane? */
			if (addr & this->writesize)
				block++;
			page >>= 1;
		}
		page &= this->page_mask;
		break;
	}

	/* NOTE: The setting order of the registers is very important! */
	if (cmd == ONENAND_CMD_BUFFERRAM) {
		/* Select DataRAM for DDP */
		value = FUNC9(this, block);
		this->write_word(value, this->base + ONENAND_REG_START_ADDRESS2);

		if (FUNC2(this) || FUNC1(this))
			/* It is always BufferRAM0 */
			FUNC3(this);
		else
			/* Switch to the next data buffer */
			FUNC4(this);

		return 0;
	}

	if (block != -1) {
		/* Write 'DFS, FBA' of Flash */
		value = FUNC7(this, block);
		this->write_word(value, this->base + ONENAND_REG_START_ADDRESS1);

		/* Select DataRAM for DDP */
		value = FUNC9(this, block);
		this->write_word(value, this->base + ONENAND_REG_START_ADDRESS2);
	}

	if (page != -1) {
		/* Now we use page size operation */
		int sectors = 0, count = 0;
		int dataram;

		switch (cmd) {
		case FLEXONENAND_CMD_RECOVER_LSB:
		case ONENAND_CMD_READ:
		case ONENAND_CMD_READOOB:
			if (FUNC2(this))
				/* It is always BufferRAM0 */
				dataram = FUNC3(this);
			else
				dataram = FUNC4(this);
			break;

		default:
			if (FUNC1(this) && cmd == ONENAND_CMD_PROG)
				cmd = ONENAND_CMD_2X_PROG;
			dataram = FUNC0(this);
			break;
		}

		/* Write 'FPA, FSA' of Flash */
		value = FUNC10(page, sectors);
		this->write_word(value, this->base + ONENAND_REG_START_ADDRESS8);

		/* Write 'BSA, BSC' of DataRAM */
		value = FUNC8(dataram, sectors, count);
		this->write_word(value, this->base + ONENAND_REG_START_BUFFER);
	}

	/* Interrupt clear */
	this->write_word(ONENAND_INT_CLEAR, this->base + ONENAND_REG_INTERRUPT);

	/* Write command */
	this->write_word(cmd, this->base + ONENAND_REG_COMMAND);

	return 0;
}