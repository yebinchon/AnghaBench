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
struct urdev {struct ccw_device* cdev; int /*<<< orphan*/  ref_count; int /*<<< orphan*/  open_lock; int /*<<< orphan*/  wait; int /*<<< orphan*/  io_mutex; int /*<<< orphan*/  dev_id; int /*<<< orphan*/  reclen; } ;
struct TYPE_2__ {int /*<<< orphan*/  driver_info; } ;
struct ccw_device {int /*<<< orphan*/  dev; TYPE_1__ id; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (struct ccw_device*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 struct urdev* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct urdev *FUNC7(struct ccw_device *cdev)
{
	struct urdev *urd;

	urd = FUNC4(sizeof(struct urdev), GFP_KERNEL);
	if (!urd)
		return NULL;
	urd->reclen = cdev->id.driver_info;
	FUNC1(cdev, &urd->dev_id);
	FUNC5(&urd->io_mutex);
	FUNC3(&urd->wait);
	FUNC6(&urd->open_lock);
	FUNC0(&urd->ref_count,  1);
	urd->cdev = cdev;
	FUNC2(&cdev->dev);
	return urd;
}