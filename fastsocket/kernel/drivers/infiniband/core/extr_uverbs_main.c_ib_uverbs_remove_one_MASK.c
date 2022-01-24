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
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;
struct ib_uverbs_device {scalar_t__ devnum; int /*<<< orphan*/  comp; int /*<<< orphan*/  ref; TYPE_1__ cdev; int /*<<< orphan*/  dev; } ;
struct ib_device {int dummy; } ;

/* Variables and functions */
 scalar_t__ IB_UVERBS_MAX_DEVICES ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  dev_map ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ib_uverbs_device* FUNC4 (struct ib_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ib_uverbs_release_dev ; 
 int /*<<< orphan*/  FUNC5 (struct ib_uverbs_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  overflow_map ; 
 int /*<<< orphan*/  uverbs_class ; 
 int /*<<< orphan*/  uverbs_client ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC8(struct ib_device *device)
{
	struct ib_uverbs_device *uverbs_dev = FUNC4(device, &uverbs_client);

	if (!uverbs_dev)
		return;

	FUNC2(uverbs_dev->dev, NULL);
	FUNC3(uverbs_class, uverbs_dev->cdev.dev);
	FUNC0(&uverbs_dev->cdev);

	if (uverbs_dev->devnum < IB_UVERBS_MAX_DEVICES)
		FUNC1(uverbs_dev->devnum, dev_map);
	else
		FUNC1(uverbs_dev->devnum - IB_UVERBS_MAX_DEVICES, overflow_map);

	FUNC6(&uverbs_dev->ref, ib_uverbs_release_dev);
	FUNC7(&uverbs_dev->comp);
	FUNC5(uverbs_dev);
}