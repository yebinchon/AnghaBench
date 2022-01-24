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
struct soc_camera_host {struct mx3_camera_dev* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct soc_camera_device {int /*<<< orphan*/  devnum; TYPE_1__ dev; } ;
struct mx3_camera_dev {struct soc_camera_device* icd; int /*<<< orphan*/  clk; struct idmac_channel** idmac_channel; } ;
struct idmac_channel {int /*<<< orphan*/  dma_chan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct soc_camera_host* FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct soc_camera_device *icd)
{
	struct soc_camera_host *ici = FUNC4(icd->dev.parent);
	struct mx3_camera_dev *mx3_cam = ici->priv;
	struct idmac_channel **ichan = &mx3_cam->idmac_channel[0];

	FUNC0(icd != mx3_cam->icd);

	if (*ichan) {
		FUNC3(&(*ichan)->dma_chan);
		*ichan = NULL;
	}

	FUNC1(mx3_cam->clk);

	mx3_cam->icd = NULL;

	FUNC2(icd->dev.parent, "MX3 Camera driver detached from camera %d\n",
		 icd->devnum);
}