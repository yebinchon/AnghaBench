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
struct onenand_chip {int chipsize; int page_shift; scalar_t__ base; int /*<<< orphan*/  erase_shift; } ;

/* Variables and functions */
 int ONENAND_BSA_DATARAM1 ; 
 int ONENAND_BSA_SHIFT ; 
#define  ONENAND_CMD_BUFFERRAM 132 
 int ONENAND_CMD_ERASE ; 
#define  ONENAND_CMD_LOCK 131 
#define  ONENAND_CMD_LOCK_TIGHT 130 
#define  ONENAND_CMD_UNLOCK 129 
#define  ONENAND_CMD_UNLOCK_ALL 128 
 int ONENAND_DDP_SHIFT ; 
 int ONENAND_FPA_SHIFT ; 
 scalar_t__ ONENAND_REG_START_ADDRESS1 ; 
 scalar_t__ ONENAND_REG_START_ADDRESS8 ; 
 scalar_t__ ONENAND_REG_START_BUFFER ; 
 unsigned long FUNC0 (struct onenand_chip*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct onenand_chip*,int,int,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct onenand_chip*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct onenand_chip*,int) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 

__attribute__((used)) static void FUNC5(struct onenand_chip *this, int cmd)
{
	unsigned long offset = 0;
	int block = -1, page = -1, bufferram = -1;
	int dataram = 0;

	switch (cmd) {
	case ONENAND_CMD_UNLOCK:
	case ONENAND_CMD_LOCK:
	case ONENAND_CMD_LOCK_TIGHT:
	case ONENAND_CMD_UNLOCK_ALL:
		FUNC2(this, cmd);
		break;

	case ONENAND_CMD_BUFFERRAM:
		/* Do nothing */
		return;

	default:
		block = (int) FUNC4(this->base + ONENAND_REG_START_ADDRESS1);
		if (block & (1 << ONENAND_DDP_SHIFT)) {
			block &= ~(1 << ONENAND_DDP_SHIFT);
			/* The half of chip block */
			block += this->chipsize >> (this->erase_shift + 1);
		}
		if (cmd == ONENAND_CMD_ERASE)
			break;

		page = (int) FUNC4(this->base + ONENAND_REG_START_ADDRESS8);
		page = (page >> ONENAND_FPA_SHIFT);
		bufferram = (int) FUNC4(this->base + ONENAND_REG_START_BUFFER);
		bufferram >>= ONENAND_BSA_SHIFT;
		bufferram &= ONENAND_BSA_DATARAM1;
		dataram = (bufferram == ONENAND_BSA_DATARAM1) ? 1 : 0;
		break;
	}

	if (block != -1)
		offset = FUNC0(this, block);

	if (page != -1)
		offset += page << this->page_shift;

	FUNC1(this, cmd, dataram, offset);

	FUNC3(this, cmd);
}