#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct of_device {int /*<<< orphan*/  node; } ;
struct TYPE_4__ {int /*<<< orphan*/  fccp; } ;
struct TYPE_3__ {int /*<<< orphan*/  fecp; } ;
struct fs_enet_private {TYPE_2__ fcc; TYPE_1__ fec; int /*<<< orphan*/  interrupt; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  NO_IRQ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct of_device* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct fs_enet_private *fep)
{
	struct of_device *ofdev = FUNC2(fep->dev);

	fep->interrupt = FUNC1(ofdev->node, 0, NULL);
	if (fep->interrupt == NO_IRQ)
		return -EINVAL;

	fep->fec.fecp = FUNC0(ofdev->node, 0);
	if (!fep->fcc.fccp)
		return -EINVAL;

	return 0;
}