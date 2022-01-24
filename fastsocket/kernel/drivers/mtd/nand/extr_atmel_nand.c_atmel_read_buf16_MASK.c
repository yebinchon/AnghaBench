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
typedef  int /*<<< orphan*/  u8 ;
struct nand_chip {int /*<<< orphan*/  IO_ADDR_R; } ;
struct mtd_info {struct nand_chip* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC1(struct mtd_info *mtd, u8 *buf, int len)
{
	struct nand_chip	*nand_chip = mtd->priv;

	FUNC0(nand_chip->IO_ADDR_R, buf, len / 2);
}