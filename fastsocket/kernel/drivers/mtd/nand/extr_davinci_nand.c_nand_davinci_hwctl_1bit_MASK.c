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
struct mtd_info {int dummy; } ;
struct davinci_nand_info {scalar_t__ core_chipsel; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  NANDFCR_OFFSET ; 
 int /*<<< orphan*/  davinci_nand_lock ; 
 int /*<<< orphan*/  FUNC1 (struct davinci_nand_info*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct davinci_nand_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mtd_info*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 struct davinci_nand_info* FUNC6 (struct mtd_info*) ; 

__attribute__((used)) static void FUNC7(struct mtd_info *mtd, int mode)
{
	struct davinci_nand_info *info;
	uint32_t nandcfr;
	unsigned long flags;

	info = FUNC6(mtd);

	/* Reset ECC hardware */
	FUNC3(mtd);

	FUNC4(&davinci_nand_lock, flags);

	/* Restart ECC hardware */
	nandcfr = FUNC1(info, NANDFCR_OFFSET);
	nandcfr |= FUNC0(8 + info->core_chipsel);
	FUNC2(info, NANDFCR_OFFSET, nandcfr);

	FUNC5(&davinci_nand_lock, flags);
}