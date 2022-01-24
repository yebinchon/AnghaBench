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
typedef  scalar_t__ u_char ;
struct nand_chip {struct fsl_elbc_mtd* priv; } ;
struct mtd_info {struct nand_chip* priv; } ;
struct fsl_elbc_mtd {struct fsl_elbc_ctrl* ctrl; } ;
struct fsl_elbc_ctrl {unsigned int read_bytes; int index; scalar_t__ status; int /*<<< orphan*/ * addr; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int EIO ; 
 scalar_t__ LTESR_CC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,...) ; 
 scalar_t__ const FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct mtd_info *mtd, const u_char *buf, int len)
{
	struct nand_chip *chip = mtd->priv;
	struct fsl_elbc_mtd *priv = chip->priv;
	struct fsl_elbc_ctrl *ctrl = priv->ctrl;
	int i;

	if (len < 0) {
		FUNC0(ctrl->dev, "write_buf of %d bytes", len);
		return -EINVAL;
	}

	if ((unsigned int)len > ctrl->read_bytes - ctrl->index) {
		FUNC0(ctrl->dev,
		        "verify_buf beyond end of buffer "
		        "(%d requested, %u available)\n",
		        len, ctrl->read_bytes - ctrl->index);

		ctrl->index = ctrl->read_bytes;
		return -EINVAL;
	}

	for (i = 0; i < len; i++)
		if (FUNC1(&ctrl->addr[ctrl->index + i]) != buf[i])
			break;

	ctrl->index += len;
	return i == len && ctrl->status == LTESR_CC ? 0 : -EIO;
}