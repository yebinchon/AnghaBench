#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  dev; } ;
struct soc_camera_host {TYPE_2__ v4l2_dev; struct sh_mobile_ceu_dev* priv; } ;
struct TYPE_6__ {int /*<<< orphan*/  parent; } ;
struct soc_camera_device {int /*<<< orphan*/  devnum; TYPE_3__ dev; } ;
struct sh_mobile_ceu_dev {struct soc_camera_device* icd; int /*<<< orphan*/  lock; TYPE_1__* active; } ;
struct TYPE_4__ {int /*<<< orphan*/  done; int /*<<< orphan*/  state; int /*<<< orphan*/  queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  CAPSR ; 
 int /*<<< orphan*/  CEIER ; 
 int /*<<< orphan*/  VIDEOBUF_ERROR ; 
 int /*<<< orphan*/  FUNC1 (struct sh_mobile_ceu_dev*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 struct soc_camera_host* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC9(struct soc_camera_device *icd)
{
	struct soc_camera_host *ici = FUNC7(icd->dev.parent);
	struct sh_mobile_ceu_dev *pcdev = ici->priv;
	unsigned long flags;

	FUNC0(icd != pcdev->icd);

	/* disable capture, disable interrupts */
	FUNC1(pcdev, CEIER, 0);
	FUNC1(pcdev, CAPSR, 1 << 16); /* reset */

	/* make sure active buffer is canceled */
	FUNC5(&pcdev->lock, flags);
	if (pcdev->active) {
		FUNC3(&pcdev->active->queue);
		pcdev->active->state = VIDEOBUF_ERROR;
		FUNC8(&pcdev->active->done);
		pcdev->active = NULL;
	}
	FUNC6(&pcdev->lock, flags);

	FUNC4(ici->v4l2_dev.dev);

	FUNC2(icd->dev.parent,
		 "SuperH Mobile CEU driver detached from camera %d\n",
		 icd->devnum);

	pcdev->icd = NULL;
}