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
struct socrates_nand_host {int /*<<< orphan*/  io_base; } ;
struct nand_chip {struct socrates_nand_host* priv; } ;
struct mtd_info {struct nand_chip* priv; } ;

/* Variables and functions */
 int FPGA_NAND_BUSY ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC1(struct mtd_info *mtd)
{
	struct nand_chip *nand_chip = mtd->priv;
	struct socrates_nand_host *host = nand_chip->priv;

	if (FUNC0(host->io_base) & FPGA_NAND_BUSY)
		return 0; /* busy */
	return 1;
}