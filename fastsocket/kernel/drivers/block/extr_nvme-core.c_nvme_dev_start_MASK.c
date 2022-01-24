#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct nvme_dev {int /*<<< orphan*/  node; } ;

/* Variables and functions */
 int EBUSY ; 
 int /*<<< orphan*/  dev_list ; 
 int /*<<< orphan*/  dev_list_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct nvme_dev*) ; 
 int FUNC3 (struct nvme_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct nvme_dev*) ; 
 int FUNC5 (struct nvme_dev*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct nvme_dev *dev)
{
	int result;

	result = FUNC3(dev);
	if (result)
		return result;

	result = FUNC2(dev);
	if (result)
		goto unmap;

	FUNC6(&dev_list_lock);
	FUNC0(&dev->node, &dev_list);
	FUNC7(&dev_list_lock);

	result = FUNC5(dev);
	if (result && result != -EBUSY)
		goto disable;

	return result;

 disable:
	FUNC6(&dev_list_lock);
	FUNC1(&dev->node);
	FUNC7(&dev_list_lock);
 unmap:
	FUNC4(dev);
	return result;
}