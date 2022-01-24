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
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ ELMC_CTRL ; 
 int ELMC_CTRL_LBK ; 
 int ELMC_CTRL_RST ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(int ioaddr, int ints)
{
	/* toggle the RST bit low then high */
	FUNC2(0x3 | ELMC_CTRL_LBK, ioaddr + ELMC_CTRL);
	FUNC0();		/* > 500 ns */
	FUNC2(ELMC_CTRL_RST | ELMC_CTRL_LBK | 0x3, ioaddr + ELMC_CTRL);

	FUNC1(ioaddr, ints);
}