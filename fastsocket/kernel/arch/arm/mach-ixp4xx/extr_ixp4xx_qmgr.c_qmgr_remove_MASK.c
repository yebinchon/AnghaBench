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

/* Variables and functions */
 int /*<<< orphan*/  IRQ_IXP4XX_QM1 ; 
 int /*<<< orphan*/  IRQ_IXP4XX_QM2 ; 
 int /*<<< orphan*/  IXP4XX_QMGR_BASE_PHYS ; 
 int /*<<< orphan*/  IXP4XX_QMGR_REGION_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  qmgr_regs ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
	FUNC0(IRQ_IXP4XX_QM1, NULL);
	FUNC0(IRQ_IXP4XX_QM2, NULL);
	FUNC3(IRQ_IXP4XX_QM1);
	FUNC3(IRQ_IXP4XX_QM2);
	FUNC1(qmgr_regs);
	FUNC2(IXP4XX_QMGR_BASE_PHYS, IXP4XX_QMGR_REGION_SIZE);
}