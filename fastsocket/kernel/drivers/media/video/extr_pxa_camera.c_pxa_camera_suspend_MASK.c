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
struct soc_camera_host {struct pxa_camera_dev* priv; } ;
struct TYPE_4__ {int /*<<< orphan*/  parent; } ;
struct soc_camera_device {TYPE_1__ dev; } ;
struct pxa_camera_dev {TYPE_3__* icd; scalar_t__ base; void** save_cicr; } ;
typedef  int /*<<< orphan*/  pm_message_t ;
struct TYPE_6__ {TYPE_2__* ops; } ;
struct TYPE_5__ {int (* suspend ) (TYPE_3__*,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 scalar_t__ CICR0 ; 
 scalar_t__ CICR1 ; 
 scalar_t__ CICR2 ; 
 scalar_t__ CICR3 ; 
 scalar_t__ CICR4 ; 
 void* FUNC0 (scalar_t__) ; 
 int FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 struct soc_camera_host* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct soc_camera_device *icd, pm_message_t state)
{
	struct soc_camera_host *ici = FUNC2(icd->dev.parent);
	struct pxa_camera_dev *pcdev = ici->priv;
	int i = 0, ret = 0;

	pcdev->save_cicr[i++] = FUNC0(pcdev->base + CICR0);
	pcdev->save_cicr[i++] = FUNC0(pcdev->base + CICR1);
	pcdev->save_cicr[i++] = FUNC0(pcdev->base + CICR2);
	pcdev->save_cicr[i++] = FUNC0(pcdev->base + CICR3);
	pcdev->save_cicr[i++] = FUNC0(pcdev->base + CICR4);

	if ((pcdev->icd) && (pcdev->icd->ops->suspend))
		ret = pcdev->icd->ops->suspend(pcdev->icd, state);

	return ret;
}