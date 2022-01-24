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
struct mousedev_client {int pos_x; int pos_y; struct mousedev* mousedev; int /*<<< orphan*/  packet_lock; } ;
struct mousedev {int /*<<< orphan*/  dev; } ;
struct inode {int dummy; } ;
struct file {struct mousedev_client* private_data; } ;

/* Variables and functions */
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ MISC_MAJOR ; 
 int MOUSEDEV_MINORS ; 
 int MOUSEDEV_MINOR_BASE ; 
 int MOUSEDEV_MIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct inode*) ; 
 int FUNC2 (struct inode*) ; 
 int /*<<< orphan*/  FUNC3 (struct mousedev_client*) ; 
 struct mousedev_client* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct mousedev*,struct mousedev_client*) ; 
 int /*<<< orphan*/  FUNC7 (struct mousedev*,struct mousedev_client*) ; 
 int FUNC8 (struct mousedev*) ; 
 struct mousedev** mousedev_table ; 
 int /*<<< orphan*/  mousedev_table_mutex ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int xres ; 
 int yres ; 

__attribute__((used)) static int FUNC14(struct inode *inode, struct file *file)
{
	struct mousedev_client *client;
	struct mousedev *mousedev;
	int error;
	int i;

#ifdef CONFIG_INPUT_MOUSEDEV_PSAUX
	if (imajor(inode) == MISC_MAJOR)
		i = MOUSEDEV_MIX;
	else
#endif
		i = FUNC2(inode) - MOUSEDEV_MINOR_BASE;

	if (i >= MOUSEDEV_MINORS)
		return -ENODEV;

	FUNC5();
	error = FUNC9(&mousedev_table_mutex);
	if (error) {
		FUNC13();
		return error;
	}
	mousedev = mousedev_table[i];
	if (mousedev)
		FUNC0(&mousedev->dev);
	FUNC10(&mousedev_table_mutex);

	if (!mousedev) {
		FUNC13();
		return -ENODEV;
	}

	client = FUNC4(sizeof(struct mousedev_client), GFP_KERNEL);
	if (!client) {
		error = -ENOMEM;
		goto err_put_mousedev;
	}

	FUNC12(&client->packet_lock);
	client->pos_x = xres / 2;
	client->pos_y = yres / 2;
	client->mousedev = mousedev;
	FUNC6(mousedev, client);

	error = FUNC8(mousedev);
	if (error)
		goto err_free_client;

	file->private_data = client;
	FUNC13();
	return 0;

 err_free_client:
	FUNC7(mousedev, client);
	FUNC3(client);
 err_put_mousedev:
	FUNC11(&mousedev->dev);
	FUNC13();
	return error;
}