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
struct vhci_data {struct hci_dev* hdev; } ;
struct inode {int dummy; } ;
struct hci_dev {int /*<<< orphan*/  name; } ;
struct file {struct vhci_data* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct hci_dev*) ; 
 scalar_t__ FUNC2 (struct hci_dev*) ; 

__attribute__((used)) static int FUNC3(struct inode *inode, struct file *file)
{
	struct vhci_data *data = file->private_data;
	struct hci_dev *hdev = data->hdev;

	if (FUNC2(hdev) < 0) {
		FUNC0("Can't unregister HCI device %s", hdev->name);
	}

	FUNC1(hdev);

	file->private_data = NULL;

	return 0;
}