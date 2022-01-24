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
typedef  unsigned long u32 ;
struct idt77252_dev {int* tst; int tst_size; int /*<<< orphan*/  cmd_lock; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 unsigned long SAR_CMD_WRITE_SRAM ; 
 int /*<<< orphan*/  SAR_REG_CMD ; 
 int /*<<< orphan*/  SAR_REG_DR0 ; 
 scalar_t__ idt77252_sram_write_errors ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct idt77252_dev*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(struct idt77252_dev *card, unsigned long addr, u32 value)
{
	unsigned long flags;

	if ((idt77252_sram_write_errors == 0) &&
	    (((addr > card->tst[0] + card->tst_size - 2) &&
	      (addr < card->tst[0] + card->tst_size)) ||
	     ((addr > card->tst[1] + card->tst_size - 2) &&
	      (addr < card->tst[1] + card->tst_size)))) {
		FUNC0("%s: ERROR: TST JMP section at %08lx written: %08x\n",
		       card->name, addr, value);
	}

	FUNC1(&card->cmd_lock, flags);
	FUNC4(value, SAR_REG_DR0);
	FUNC4(SAR_CMD_WRITE_SRAM | (addr << 2), SAR_REG_CMD);
	FUNC3(card);
	FUNC2(&card->cmd_lock, flags);
}