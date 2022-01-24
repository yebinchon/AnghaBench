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
typedef  int /*<<< orphan*/  uint32_t ;
struct pxa3xx_nand_timing {void* tAR; void* tWHR; void* tR; void* tRP; void* tRH; void* tWP; void* tWH; void* tCS; void* tCH; } ;
struct pxa3xx_nand_info {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  NDTR0CS0 ; 
 int /*<<< orphan*/  NDTR1CS0 ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (struct pxa3xx_nand_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12(struct pxa3xx_nand_info *info,
				      struct pxa3xx_nand_timing *t)
{
	unsigned long nand_clk = FUNC0(info->clk);
	uint32_t ndtr0 = FUNC2(info, NDTR0CS0);
	uint32_t ndtr1 = FUNC2(info, NDTR1CS0);

	t->tCH = FUNC1(FUNC4(ndtr0), nand_clk);
	t->tCS = FUNC1(FUNC5(ndtr0), nand_clk);
	t->tWH = FUNC1(FUNC10(ndtr0), nand_clk);
	t->tWP = FUNC1(FUNC11(ndtr0), nand_clk);
	t->tRH = FUNC1(FUNC6(ndtr0), nand_clk);
	t->tRP = FUNC1(FUNC7(ndtr0), nand_clk);

	t->tR = FUNC1(FUNC8(ndtr1), nand_clk);
	t->tWHR = FUNC1(FUNC9(ndtr1), nand_clk);
	t->tAR = FUNC1(FUNC3(ndtr1), nand_clk);
}