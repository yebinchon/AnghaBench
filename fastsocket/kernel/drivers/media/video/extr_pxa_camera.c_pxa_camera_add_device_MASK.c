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
struct soc_camera_host {struct pxa_camera_dev* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct soc_camera_device {int /*<<< orphan*/  devnum; TYPE_1__ dev; } ;
struct pxa_camera_dev {struct soc_camera_device* icd; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pxa_camera_dev*) ; 
 struct soc_camera_host* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct soc_camera_device *icd)
{
	struct soc_camera_host *ici = FUNC2(icd->dev.parent);
	struct pxa_camera_dev *pcdev = ici->priv;

	if (pcdev->icd)
		return -EBUSY;

	FUNC1(pcdev);

	pcdev->icd = icd;

	FUNC0(icd->dev.parent, "PXA Camera driver attached to camera %d\n",
		 icd->devnum);

	return 0;
}