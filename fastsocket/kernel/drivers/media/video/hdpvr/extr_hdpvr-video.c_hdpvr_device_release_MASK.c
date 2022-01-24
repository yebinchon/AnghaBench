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
struct video_device {int dummy; } ;
struct hdpvr_device {struct hdpvr_device* usbc_buf; int /*<<< orphan*/  i2c_mutex; int /*<<< orphan*/  i2c_adapter; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  io_mutex; int /*<<< orphan*/  workqueue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hdpvr_device*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct hdpvr_device*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct hdpvr_device* FUNC7 (struct video_device*) ; 

__attribute__((used)) static void FUNC8(struct video_device *vdev)
{
	struct hdpvr_device *dev = FUNC7(vdev);

	FUNC1(dev);
	FUNC4(&dev->io_mutex);
	FUNC0(dev->workqueue);
	FUNC5(&dev->io_mutex);

	FUNC6(&dev->v4l2_dev);

	/* deregister I2C adapter */
#if defined(CONFIG_I2C) || (CONFIG_I2C_MODULE)
	mutex_lock(&dev->i2c_mutex);
	i2c_del_adapter(&dev->i2c_adapter);
	mutex_unlock(&dev->i2c_mutex);
#endif /* CONFIG_I2C */

	FUNC3(dev->usbc_buf);
	FUNC3(dev);
}