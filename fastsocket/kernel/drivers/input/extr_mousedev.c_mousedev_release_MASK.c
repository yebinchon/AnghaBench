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
struct mousedev_client {struct mousedev* mousedev; } ;
struct mousedev {int /*<<< orphan*/  dev; } ;
struct inode {int dummy; } ;
struct file {struct mousedev_client* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mousedev_client*) ; 
 int /*<<< orphan*/  FUNC1 (struct mousedev*) ; 
 int /*<<< orphan*/  FUNC2 (struct mousedev*,struct mousedev_client*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(struct inode *inode, struct file *file)
{
	struct mousedev_client *client = file->private_data;
	struct mousedev *mousedev = client->mousedev;

	FUNC2(mousedev, client);
	FUNC0(client);

	FUNC1(mousedev);
	FUNC3(&mousedev->dev);

	return 0;
}