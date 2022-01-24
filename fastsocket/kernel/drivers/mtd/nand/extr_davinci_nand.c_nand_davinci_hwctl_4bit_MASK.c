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
typedef  int u32 ;
struct mtd_info {int dummy; } ;
struct davinci_nand_info {int core_chipsel; int is_readmode; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  NANDFCR_OFFSET ; 
 int NAND_ECC_READ ; 
 int /*<<< orphan*/  davinci_nand_lock ; 
 int FUNC1 (struct davinci_nand_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct davinci_nand_info*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 struct davinci_nand_info* FUNC5 (struct mtd_info*) ; 

__attribute__((used)) static void FUNC6(struct mtd_info *mtd, int mode)
{
	struct davinci_nand_info *info = FUNC5(mtd);
	unsigned long flags;
	u32 val;

	FUNC3(&davinci_nand_lock, flags);

	/* Start 4-bit ECC calculation for read/write */
	val = FUNC1(info, NANDFCR_OFFSET);
	val &= ~(0x03 << 4);
	val |= (info->core_chipsel << 4) | FUNC0(12);
	FUNC2(info, NANDFCR_OFFSET, val);

	info->is_readmode = (mode == NAND_ECC_READ);

	FUNC4(&davinci_nand_lock, flags);
}