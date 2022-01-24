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
typedef  int /*<<< orphan*/  u32 ;
struct idt77252_dev {int /*<<< orphan*/  cmd_lock; } ;

/* Variables and functions */
 unsigned long SAR_CMD_READ_SRAM ; 
 int /*<<< orphan*/  SAR_REG_CMD ; 
 int /*<<< orphan*/  SAR_REG_DR0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (struct idt77252_dev*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32
FUNC5(struct idt77252_dev *card, unsigned long addr)
{
	unsigned long flags;
	u32 value;

	FUNC1(&card->cmd_lock, flags);
	FUNC4(SAR_CMD_READ_SRAM | (addr << 2), SAR_REG_CMD);
	FUNC3(card);
	value = FUNC0(SAR_REG_DR0);
	FUNC2(&card->cmd_lock, flags);
	return value;
}