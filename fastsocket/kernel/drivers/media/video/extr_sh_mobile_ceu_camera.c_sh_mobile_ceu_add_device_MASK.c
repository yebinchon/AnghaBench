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
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct soc_camera_host {TYPE_2__ v4l2_dev; struct sh_mobile_ceu_dev* priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct soc_camera_device {int /*<<< orphan*/  devnum; TYPE_1__ dev; } ;
struct sh_mobile_ceu_dev {struct soc_camera_device* icd; } ;

/* Variables and functions */
 int /*<<< orphan*/  CAPSR ; 
 int /*<<< orphan*/  CSTSR ; 
 int EBUSY ; 
 int FUNC0 (struct sh_mobile_ceu_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_mobile_ceu_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 struct soc_camera_host* FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct soc_camera_device *icd)
{
	struct soc_camera_host *ici = FUNC5(icd->dev.parent);
	struct sh_mobile_ceu_dev *pcdev = ici->priv;

	if (pcdev->icd)
		return -EBUSY;

	FUNC2(icd->dev.parent,
		 "SuperH Mobile CEU driver attached to camera %d\n",
		 icd->devnum);

	FUNC4(ici->v4l2_dev.dev);

	FUNC1(pcdev, CAPSR, 1 << 16); /* reset */
	while (FUNC0(pcdev, CSTSR) & 1)
		FUNC3(1);

	pcdev->icd = icd;

	return 0;
}