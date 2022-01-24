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
struct inode {int dummy; } ;
struct file {struct evdev_client* private_data; } ;
struct evdev_client {struct evdev* evdev; int /*<<< orphan*/  buffer_lock; } ;
struct evdev {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int EVDEV_MINORS ; 
 int EVDEV_MINOR_BASE ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct evdev*,struct evdev_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct evdev*,struct evdev_client*) ; 
 int FUNC2 (struct evdev*) ; 
 struct evdev** evdev_table ; 
 int /*<<< orphan*/  evdev_table_mutex ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (struct inode*) ; 
 int /*<<< orphan*/  FUNC5 (struct evdev_client*) ; 
 struct evdev_client* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct inode *inode, struct file *file)
{
	struct evdev *evdev;
	struct evdev_client *client;
	int i = FUNC4(inode) - EVDEV_MINOR_BASE;
	int error;

	if (i >= EVDEV_MINORS)
		return -ENODEV;

	error = FUNC7(&evdev_table_mutex);
	if (error)
		return error;
	evdev = evdev_table[i];
	if (evdev)
		FUNC3(&evdev->dev);
	FUNC8(&evdev_table_mutex);

	if (!evdev)
		return -ENODEV;

	client = FUNC6(sizeof(struct evdev_client), GFP_KERNEL);
	if (!client) {
		error = -ENOMEM;
		goto err_put_evdev;
	}

	FUNC10(&client->buffer_lock);
	client->evdev = evdev;
	FUNC0(evdev, client);

	error = FUNC2(evdev);
	if (error)
		goto err_free_client;

	file->private_data = client;
	return 0;

 err_free_client:
	FUNC1(evdev, client);
	FUNC5(client);
 err_put_evdev:
	FUNC9(&evdev->dev);
	return error;
}