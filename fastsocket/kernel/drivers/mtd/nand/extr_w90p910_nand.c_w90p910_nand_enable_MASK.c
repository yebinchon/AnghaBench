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
struct w90p910_nand {int /*<<< orphan*/  lock; scalar_t__ reg; } ;

/* Variables and functions */
 unsigned int BUSWID ; 
 unsigned int DMARWEN ; 
 unsigned int ECC4EN ; 
 unsigned int NANDCS ; 
 unsigned int NAND_EN ; 
 unsigned int PSIZE ; 
 scalar_t__ REG_FMICSR ; 
 scalar_t__ REG_SMCSR ; 
 unsigned int RESET_FMI ; 
 unsigned int SWRST ; 
 unsigned int WP ; 
 unsigned int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(struct w90p910_nand *nand)
{
	unsigned int val;
	FUNC2(&nand->lock);
	FUNC1(RESET_FMI, (nand->reg + REG_FMICSR));

	val = FUNC0(nand->reg + REG_FMICSR);

	if (!(val & NAND_EN))
		FUNC1(val | NAND_EN, REG_FMICSR);

	val = FUNC0(nand->reg + REG_SMCSR);

	val &= ~(SWRST|PSIZE|DMARWEN|BUSWID|ECC4EN|NANDCS);
	val |= WP;

	FUNC1(val, nand->reg + REG_SMCSR);

	FUNC3(&nand->lock);
}