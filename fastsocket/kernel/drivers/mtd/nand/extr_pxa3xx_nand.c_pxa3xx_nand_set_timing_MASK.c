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
typedef  int uint32_t ;
struct pxa3xx_nand_timing {int /*<<< orphan*/  tAR; int /*<<< orphan*/  tWHR; int /*<<< orphan*/  tR; int /*<<< orphan*/  tRP; int /*<<< orphan*/  tRH; int /*<<< orphan*/  tWP; int /*<<< orphan*/  tWH; int /*<<< orphan*/  tCS; int /*<<< orphan*/  tCH; } ;
struct pxa3xx_nand_info {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  NDTR0CS0 ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NDTR1CS0 ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 
 unsigned long FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct pxa3xx_nand_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC12(struct pxa3xx_nand_info *info,
				   const struct pxa3xx_nand_timing *t)
{
	unsigned long nand_clk = FUNC9(info->clk);
	uint32_t ndtr0, ndtr1;

	ndtr0 = FUNC0(FUNC11(t->tCH, nand_clk)) |
		FUNC1(FUNC11(t->tCS, nand_clk)) |
		FUNC4(FUNC11(t->tWH, nand_clk)) |
		FUNC5(FUNC11(t->tWP, nand_clk)) |
		FUNC2(FUNC11(t->tRH, nand_clk)) |
		FUNC3(FUNC11(t->tRP, nand_clk));

	ndtr1 = FUNC7(FUNC11(t->tR, nand_clk)) |
		FUNC8(FUNC11(t->tWHR, nand_clk)) |
		FUNC6(FUNC11(t->tAR, nand_clk));

	FUNC10(info, NDTR0CS0, ndtr0);
	FUNC10(info, NDTR1CS0, ndtr1);
}