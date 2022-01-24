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
struct TYPE_2__ {scalar_t__ oper_state; } ;
struct scm_device {int /*<<< orphan*/  lock; int /*<<< orphan*/  dev; TYPE_1__ attrs; } ;
struct scm_blk_dev {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ OP_STATE_GOOD ; 
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int,struct scm_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,struct scm_blk_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct scm_blk_dev*) ; 
 struct scm_blk_dev* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct scm_blk_dev*,struct scm_device*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(struct scm_device *scmdev)
{
	struct scm_blk_dev *bdev;
	int ret;

	FUNC0(2, "probe");
	FUNC1(2, scmdev);

	if (scmdev->attrs.oper_state != OP_STATE_GOOD)
		return -EINVAL;

	bdev = FUNC4(sizeof(*bdev), GFP_KERNEL);
	if (!bdev)
		return -ENOMEM;

	FUNC6(&scmdev->lock);
	FUNC2(&scmdev->dev, bdev);
	FUNC7(&scmdev->lock);

	ret = FUNC5(bdev, scmdev);
	if (ret) {
		FUNC6(&scmdev->lock);
		FUNC2(&scmdev->dev, NULL);
		FUNC7(&scmdev->lock);
		FUNC3(bdev);
		goto out;
	}

out:
	return ret;
}