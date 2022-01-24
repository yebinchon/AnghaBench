#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  release; int /*<<< orphan*/  devt; int /*<<< orphan*/ * parent; int /*<<< orphan*/ * class; } ;
struct TYPE_9__ {struct mousedev* private; struct input_handler* handler; int /*<<< orphan*/  name; int /*<<< orphan*/  dev; } ;
struct mousedev {int minor; int exist; TYPE_1__ dev; TYPE_2__ handle; int /*<<< orphan*/  wait; int /*<<< orphan*/  mutex; int /*<<< orphan*/  client_lock; int /*<<< orphan*/  mixdev_node; int /*<<< orphan*/  client_list; } ;
struct input_handler {int dummy; } ;
struct input_dev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct mousedev* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  INPUT_MAJOR ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ MOUSEDEV_MINOR_BASE ; 
 int MOUSEDEV_MIX ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,...) ; 
 int FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  input_class ; 
 int /*<<< orphan*/  FUNC8 (struct input_dev*) ; 
 int FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 struct mousedev* FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (struct mousedev*) ; 
 int /*<<< orphan*/  mousedev_free ; 
 int FUNC14 (struct mousedev*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct mousedev *FUNC18(struct input_dev *dev,
					struct input_handler *handler,
					int minor)
{
	struct mousedev *mousedev;
	int error;

	mousedev = FUNC11(sizeof(struct mousedev), GFP_KERNEL);
	if (!mousedev) {
		error = -ENOMEM;
		goto err_out;
	}

	FUNC1(&mousedev->client_list);
	FUNC1(&mousedev->mixdev_node);
	FUNC17(&mousedev->client_lock);
	FUNC15(&mousedev->mutex);
	FUNC12(&mousedev->mutex,
			     minor == MOUSEDEV_MIX ? MOUSEDEV_MIX : 0);
	FUNC7(&mousedev->wait);

	if (minor == MOUSEDEV_MIX)
		FUNC4(&mousedev->dev, "mice");
	else
		FUNC4(&mousedev->dev, "mouse%d", minor);

	mousedev->minor = minor;
	mousedev->exist = 1;
	mousedev->handle.dev = FUNC8(dev);
	mousedev->handle.name = FUNC3(&mousedev->dev);
	mousedev->handle.handler = handler;
	mousedev->handle.private = mousedev;

	mousedev->dev.class = &input_class;
	if (dev)
		mousedev->dev.parent = &dev->dev;
	mousedev->dev.devt = FUNC2(INPUT_MAJOR, MOUSEDEV_MINOR_BASE + minor);
	mousedev->dev.release = mousedev_free;
	FUNC6(&mousedev->dev);

	if (minor != MOUSEDEV_MIX) {
		error = FUNC9(&mousedev->handle);
		if (error)
			goto err_free_mousedev;
	}

	error = FUNC14(mousedev);
	if (error)
		goto err_unregister_handle;

	error = FUNC5(&mousedev->dev);
	if (error)
		goto err_cleanup_mousedev;

	return mousedev;

 err_cleanup_mousedev:
	FUNC13(mousedev);
 err_unregister_handle:
	if (minor != MOUSEDEV_MIX)
		FUNC10(&mousedev->handle);
 err_free_mousedev:
	FUNC16(&mousedev->dev);
 err_out:
	return FUNC0(error);
}