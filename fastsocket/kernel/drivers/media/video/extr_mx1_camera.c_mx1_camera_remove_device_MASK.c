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
struct soc_camera_host {struct mx1_camera_dev* priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  parent; } ;
struct soc_camera_device {int /*<<< orphan*/  devnum; TYPE_1__ dev; } ;
struct mx1_camera_dev {struct soc_camera_device* icd; int /*<<< orphan*/  dma_chan; scalar_t__ base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ CSICR1 ; 
 unsigned int CSI_IRQ_MASK ; 
 unsigned int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mx1_camera_dev*) ; 
 struct soc_camera_host* FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(struct soc_camera_device *icd)
{
	struct soc_camera_host *ici = FUNC6(icd->dev.parent);
	struct mx1_camera_dev *pcdev = ici->priv;
	unsigned int csicr1;

	FUNC0(icd != pcdev->icd);

	/* disable interrupts */
	csicr1 = FUNC1(pcdev->base + CSICR1) & ~CSI_IRQ_MASK;
	FUNC2(csicr1, pcdev->base + CSICR1);

	/* Stop DMA engine */
	FUNC4(pcdev->dma_chan);

	FUNC3(icd->dev.parent, "MX1 Camera driver detached from camera %d\n",
		 icd->devnum);

	FUNC5(pcdev);

	pcdev->icd = NULL;
}