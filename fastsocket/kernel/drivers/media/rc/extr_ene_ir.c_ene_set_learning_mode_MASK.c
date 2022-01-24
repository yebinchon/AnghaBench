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
struct rc_dev {struct ene_device* priv; } ;
struct ene_device {int learning_mode_enabled; int /*<<< orphan*/  hw_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ene_device*) ; 
 int /*<<< orphan*/  FUNC1 (struct ene_device*) ; 
 int /*<<< orphan*/  FUNC2 (struct ene_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static int FUNC5(struct rc_dev *rdev, int enable)
{
	struct ene_device *dev = rdev->priv;
	unsigned long flags;
	if (enable == dev->learning_mode_enabled)
		return 0;

	FUNC3(&dev->hw_lock, flags);
	dev->learning_mode_enabled = enable;
	FUNC0(dev);
	FUNC2(dev);
	FUNC1(dev);
	FUNC4(&dev->hw_lock, flags);
	return 0;
}