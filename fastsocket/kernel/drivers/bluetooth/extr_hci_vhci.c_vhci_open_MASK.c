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
struct vhci_data {struct hci_dev* hdev; int /*<<< orphan*/  read_wait; int /*<<< orphan*/  readq; } ;
struct inode {int dummy; } ;
struct hci_dev {int /*<<< orphan*/  owner; int /*<<< orphan*/  destruct; int /*<<< orphan*/  send; int /*<<< orphan*/  flush; int /*<<< orphan*/  close; int /*<<< orphan*/  open; struct vhci_data* driver_data; int /*<<< orphan*/  type; } ;
struct file {struct vhci_data* private_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int EBUSY ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HCI_VIRTUAL ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 struct hci_dev* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 scalar_t__ FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct vhci_data*) ; 
 struct vhci_data* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int FUNC7 (struct inode*,struct file*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vhci_close_dev ; 
 int /*<<< orphan*/  vhci_destruct ; 
 int /*<<< orphan*/  vhci_flush ; 
 int /*<<< orphan*/  vhci_open_dev ; 
 int /*<<< orphan*/  vhci_send_frame ; 

__attribute__((used)) static int FUNC9(struct inode *inode, struct file *file)
{
	struct vhci_data *data;
	struct hci_dev *hdev;

	data = FUNC6(sizeof(struct vhci_data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	FUNC8(&data->readq);
	FUNC4(&data->read_wait);

	hdev = FUNC1();
	if (!hdev) {
		FUNC5(data);
		return -ENOMEM;
	}

	data->hdev = hdev;

	hdev->type = HCI_VIRTUAL;
	hdev->driver_data = data;

	hdev->open     = vhci_open_dev;
	hdev->close    = vhci_close_dev;
	hdev->flush    = vhci_flush;
	hdev->send     = vhci_send_frame;
	hdev->destruct = vhci_destruct;

	hdev->owner = THIS_MODULE;

	if (FUNC3(hdev) < 0) {
		FUNC0("Can't register HCI device");
		FUNC5(data);
		FUNC2(hdev);
		return -EBUSY;
	}

	file->private_data = data;

	return FUNC7(inode, file);
}