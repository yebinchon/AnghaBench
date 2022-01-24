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
struct usb_interface {int dummy; } ;
struct hdpvr_device {int /*<<< orphan*/  video_dev; int /*<<< orphan*/  i2c_adapter; int /*<<< orphan*/  io_mutex; int /*<<< orphan*/  workqueue; int /*<<< orphan*/  v4l2_dev; int /*<<< orphan*/  wait_buffer; int /*<<< orphan*/  wait_data; int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  STATUS_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  dev_nr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hdpvr_device*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 struct hdpvr_device* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC14(struct usb_interface *interface)
{
	struct hdpvr_device *dev = FUNC7(FUNC8(interface));

	FUNC10(&dev->v4l2_dev, "device %s disconnected\n",
		  FUNC11(dev->video_dev));
	/* prevent more I/O from starting and stop any ongoing */
	FUNC5(&dev->io_mutex);
	dev->status = STATUS_DISCONNECTED;
	FUNC13(&dev->wait_data);
	FUNC13(&dev->wait_buffer);
	FUNC6(&dev->io_mutex);
	FUNC9(&dev->v4l2_dev);
	FUNC4(100);
	FUNC1(dev->workqueue);
	FUNC5(&dev->io_mutex);
	FUNC2(dev);
	FUNC6(&dev->io_mutex);
#if defined(CONFIG_I2C) || defined(CONFIG_I2C_MODULE)
	i2c_del_adapter(&dev->i2c_adapter);
#endif
	FUNC12(dev->video_dev);
	FUNC0(&dev_nr);
}