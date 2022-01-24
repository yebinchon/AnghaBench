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
struct joydev_client {struct joydev* joydev; int /*<<< orphan*/  buffer_lock; } ;
struct joydev {int /*<<< orphan*/  dev; } ;
struct inode {int dummy; } ;
struct file {struct joydev_client* private_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int JOYDEV_MINORS ; 
 int JOYDEV_MINOR_BASE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct inode*) ; 
 int /*<<< orphan*/  FUNC2 (struct joydev*,struct joydev_client*) ; 
 int /*<<< orphan*/  FUNC3 (struct joydev*,struct joydev_client*) ; 
 int FUNC4 (struct joydev*) ; 
 struct joydev** joydev_table ; 
 int /*<<< orphan*/  joydev_table_mutex ; 
 int /*<<< orphan*/  FUNC5 (struct joydev_client*) ; 
 struct joydev_client* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC11(struct inode *inode, struct file *file)
{
	struct joydev_client *client;
	struct joydev *joydev;
	int i = FUNC1(inode) - JOYDEV_MINOR_BASE;
	int error;

	if (i >= JOYDEV_MINORS)
		return -ENODEV;

	error = FUNC7(&joydev_table_mutex);
	if (error)
		return error;
	joydev = joydev_table[i];
	if (joydev)
		FUNC0(&joydev->dev);
	FUNC8(&joydev_table_mutex);

	if (!joydev)
		return -ENODEV;

	client = FUNC6(sizeof(struct joydev_client), GFP_KERNEL);
	if (!client) {
		error = -ENOMEM;
		goto err_put_joydev;
	}

	FUNC10(&client->buffer_lock);
	client->joydev = joydev;
	FUNC2(joydev, client);

	error = FUNC4(joydev);
	if (error)
		goto err_free_client;

	file->private_data = client;
	return 0;

 err_free_client:
	FUNC3(joydev, client);
	FUNC5(client);
 err_put_joydev:
	FUNC9(&joydev->dev);
	return error;
}