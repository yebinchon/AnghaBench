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
struct nand_chip {struct fsl_elbc_mtd* priv; } ;
struct mtd_info {struct nand_chip* priv; } ;
struct fsl_elbc_mtd {struct fsl_elbc_ctrl* ctrl; } ;
struct fsl_elbc_ctrl {size_t index; int /*<<< orphan*/  dev; int /*<<< orphan*/ * addr; scalar_t__ read_bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int FUNC2 (unsigned int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct mtd_info *mtd, u8 *buf, int len)
{
	struct nand_chip *chip = mtd->priv;
	struct fsl_elbc_mtd *priv = chip->priv;
	struct fsl_elbc_ctrl *ctrl = priv->ctrl;
	int avail;

	if (len < 0)
		return;

	avail = FUNC2((unsigned int)len, ctrl->read_bytes - ctrl->index);
	FUNC1(buf, &ctrl->addr[ctrl->index], avail);
	ctrl->index += avail;

	if (len > avail)
		FUNC0(ctrl->dev,
		        "read_buf beyond end of buffer "
		        "(%d requested, %d available)\n",
		        len, avail);
}