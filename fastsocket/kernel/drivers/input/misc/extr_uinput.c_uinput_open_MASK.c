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
struct uinput_device {int /*<<< orphan*/  state; int /*<<< orphan*/  waitq; int /*<<< orphan*/  requests_waitq; int /*<<< orphan*/  requests_lock; int /*<<< orphan*/  mutex; } ;
struct inode {int dummy; } ;
struct file {struct uinput_device* private_data; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  UIST_NEW_DEVICE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct uinput_device* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static int FUNC6(struct inode *inode, struct file *file)
{
	struct uinput_device *newdev;

	newdev = FUNC1(sizeof(struct uinput_device), GFP_KERNEL);
	if (!newdev)
		return -ENOMEM;

	FUNC2();
	FUNC3(&newdev->mutex);
	FUNC4(&newdev->requests_lock);
	FUNC0(&newdev->requests_waitq);
	FUNC0(&newdev->waitq);
	newdev->state = UIST_NEW_DEVICE;

	file->private_data = newdev;
	FUNC5();

	return 0;
}