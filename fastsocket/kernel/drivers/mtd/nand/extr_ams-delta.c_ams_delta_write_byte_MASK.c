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
struct nand_chip {scalar_t__ IO_ADDR_W; } ;
struct mtd_info {struct nand_chip* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  AMS_DELTA_LATCH2_NAND_NWE ; 
 scalar_t__ OMAP1_MPUIO_BASE ; 
 scalar_t__ OMAP_MPUIO_IO_CNTL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct mtd_info *mtd, u_char byte)
{
	struct nand_chip *this = mtd->priv;

	FUNC2(0, (OMAP1_MPUIO_BASE + OMAP_MPUIO_IO_CNTL));
	FUNC2(byte, this->IO_ADDR_W);
	FUNC0(AMS_DELTA_LATCH2_NAND_NWE, 0);
	FUNC1(40);
	FUNC0(AMS_DELTA_LATCH2_NAND_NWE,
			       AMS_DELTA_LATCH2_NAND_NWE);
}