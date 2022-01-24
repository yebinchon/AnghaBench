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
typedef  int /*<<< orphan*/  u_char ;
struct nand_chip {int /*<<< orphan*/  IO_ADDR_R; } ;
struct mtd_info {struct nand_chip* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMS_DELTA_LATCH2_NAND_NRE ; 
 scalar_t__ OMAP1_MPUIO_BASE ; 
 scalar_t__ OMAP_MPUIO_IO_CNTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static u_char FUNC4(struct mtd_info *mtd)
{
	u_char res;
	struct nand_chip *this = mtd->priv;

	FUNC0(AMS_DELTA_LATCH2_NAND_NRE, 0);
	FUNC1(40);
	FUNC3(~0, (OMAP1_MPUIO_BASE + OMAP_MPUIO_IO_CNTL));
	res = FUNC2(this->IO_ADDR_R);
	FUNC0(AMS_DELTA_LATCH2_NAND_NRE,
			       AMS_DELTA_LATCH2_NAND_NRE);

	return res;
}