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
struct pxa3xx_nand_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  NDCR ; 
 int FUNC0 (struct pxa3xx_nand_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pxa3xx_nand_info*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(struct pxa3xx_nand_info *info, uint32_t int_mask)
{
	uint32_t ndcr;

	ndcr = FUNC0(info, NDCR);
	FUNC1(info, NDCR, ndcr & ~int_mask);
}