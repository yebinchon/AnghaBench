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
struct TYPE_2__ {struct fsl_elbc_mtd* name; } ;
struct fsl_elbc_mtd {size_t bank; scalar_t__ vbase; TYPE_1__ mtd; struct fsl_elbc_ctrl* ctrl; } ;
struct fsl_elbc_ctrl {int /*<<< orphan*/ ** chips; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct fsl_elbc_mtd*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC3(struct fsl_elbc_mtd *priv)
{
	struct fsl_elbc_ctrl *ctrl = priv->ctrl;

	FUNC2(&priv->mtd);

	FUNC1(priv->mtd.name);

	if (priv->vbase)
		FUNC0(priv->vbase);

	ctrl->chips[priv->bank] = NULL;
	FUNC1(priv);

	return 0;
}