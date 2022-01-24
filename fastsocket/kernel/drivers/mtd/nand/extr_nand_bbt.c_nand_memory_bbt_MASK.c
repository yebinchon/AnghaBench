#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct nand_chip {TYPE_1__* buffers; } ;
struct nand_bbt_descr {int /*<<< orphan*/  options; } ;
struct mtd_info {struct nand_chip* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  databuf; } ;

/* Variables and functions */
 int /*<<< orphan*/  NAND_BBT_SCANEMPTY ; 
 int FUNC0 (struct mtd_info*,int /*<<< orphan*/ ,struct nand_bbt_descr*,int) ; 

__attribute__((used)) static inline int FUNC1(struct mtd_info *mtd, struct nand_bbt_descr *bd)
{
	struct nand_chip *this = mtd->priv;

	bd->options &= ~NAND_BBT_SCANEMPTY;
	return FUNC0(mtd, this->buffers->databuf, bd, -1);
}