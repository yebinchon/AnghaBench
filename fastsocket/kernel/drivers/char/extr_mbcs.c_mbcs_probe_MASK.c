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
struct mbcs_soft {int /*<<< orphan*/  algo; int /*<<< orphan*/  putdma; int /*<<< orphan*/  getdma; int /*<<< orphan*/  algolock; int /*<<< orphan*/  dmareadlock; int /*<<< orphan*/  dmawritelock; int /*<<< orphan*/  algo_queue; int /*<<< orphan*/  dmaread_queue; int /*<<< orphan*/  dmawrite_queue; struct cx_dev* cxdev; void* mmr_base; int /*<<< orphan*/  list; int /*<<< orphan*/  nasid; } ;
struct cx_device_id {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  nasid; } ;
struct cx_dev {int /*<<< orphan*/  dev; struct mbcs_soft* soft; TYPE_1__ cx_id; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  dev_attr_algo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 struct mbcs_soft* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct mbcs_soft*) ; 
 int /*<<< orphan*/  FUNC7 (struct cx_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  soft_list ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct cx_dev *dev, const struct cx_device_id *id)
{
	struct mbcs_soft *soft;

	dev->soft = NULL;

	soft = FUNC2(sizeof(struct mbcs_soft), GFP_KERNEL);
	if (soft == NULL)
		return -ENOMEM;

	soft->nasid = dev->cx_id.nasid;
	FUNC3(&soft->list, &soft_list);
	soft->mmr_base = (void *)FUNC10(dev->cx_id.nasid);
	dev->soft = soft;
	soft->cxdev = dev;

	FUNC1(&soft->dmawrite_queue);
	FUNC1(&soft->dmaread_queue);
	FUNC1(&soft->algo_queue);

	FUNC9(&soft->dmawritelock);
	FUNC9(&soft->dmareadlock);
	FUNC9(&soft->algolock);

	FUNC5(&soft->getdma);
	FUNC8(&soft->putdma);
	FUNC4(&soft->algo);

	FUNC6(soft);

	/* Allocate interrupts */
	FUNC7(dev);

	FUNC0(&dev->dev, &dev_attr_algo);

	return 0;
}