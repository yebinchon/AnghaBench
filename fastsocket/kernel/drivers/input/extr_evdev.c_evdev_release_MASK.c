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
struct evdev_client {struct evdev* evdev; } ;
struct evdev {int /*<<< orphan*/  dev; int /*<<< orphan*/  mutex; struct evdev_client* grab; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evdev*) ; 
 int /*<<< orphan*/  FUNC1 (struct evdev*,struct evdev_client*) ; 
 int /*<<< orphan*/  FUNC2 (struct evdev*,struct evdev_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct evdev_client*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct inode *inode, struct file *file)
{
	struct evdev_client *client = file->private_data;
	struct evdev *evdev = client->evdev;

	FUNC4(&evdev->mutex);
	if (evdev->grab == client)
		FUNC2(evdev, client);
	FUNC5(&evdev->mutex);

	FUNC1(evdev, client);
	FUNC3(client);

	FUNC0(evdev);
	FUNC6(&evdev->dev);

	return 0;
}