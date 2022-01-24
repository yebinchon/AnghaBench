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
struct sdio_func_tuple {struct sdio_func_tuple* next; int /*<<< orphan*/  size; int /*<<< orphan*/  code; } ;
struct sdio_func {int /*<<< orphan*/  dev; int /*<<< orphan*/  class; struct sdio_func_tuple* tuples; } ;
struct sdio_device_id {int dummy; } ;
struct hci_dev {int /*<<< orphan*/  owner; int /*<<< orphan*/  destruct; int /*<<< orphan*/  send; int /*<<< orphan*/  flush; int /*<<< orphan*/  close; int /*<<< orphan*/  open; struct btsdio_data* driver_data; int /*<<< orphan*/  type; } ;
struct btsdio_data {struct hci_dev* hdev; int /*<<< orphan*/  txq; int /*<<< orphan*/  work; struct sdio_func* func; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,struct sdio_func*,int /*<<< orphan*/ ,...) ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HCI_SDIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  btsdio_close ; 
 int /*<<< orphan*/  btsdio_destruct ; 
 int /*<<< orphan*/  btsdio_flush ; 
 int /*<<< orphan*/  btsdio_open ; 
 int /*<<< orphan*/  btsdio_send_frame ; 
 int /*<<< orphan*/  btsdio_work ; 
 struct hci_dev* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (struct hci_dev*) ; 
 int FUNC5 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC6 (struct btsdio_data*) ; 
 struct btsdio_data* FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sdio_func*,struct btsdio_data*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC10(struct sdio_func *func,
				const struct sdio_device_id *id)
{
	struct btsdio_data *data;
	struct hci_dev *hdev;
	struct sdio_func_tuple *tuple = func->tuples;
	int err;

	FUNC0("func %p id %p class 0x%04x", func, id, func->class);

	while (tuple) {
		FUNC0("code 0x%x size %d", tuple->code, tuple->size);
		tuple = tuple->next;
	}

	data = FUNC7(sizeof(*data), GFP_KERNEL);
	if (!data)
		return -ENOMEM;

	data->func = func;

	FUNC1(&data->work, btsdio_work);

	FUNC9(&data->txq);

	hdev = FUNC3();
	if (!hdev) {
		FUNC6(data);
		return -ENOMEM;
	}

	hdev->type = HCI_SDIO;
	hdev->driver_data = data;

	data->hdev = hdev;

	FUNC2(hdev, &func->dev);

	hdev->open     = btsdio_open;
	hdev->close    = btsdio_close;
	hdev->flush    = btsdio_flush;
	hdev->send     = btsdio_send_frame;
	hdev->destruct = btsdio_destruct;

	hdev->owner = THIS_MODULE;

	err = FUNC5(hdev);
	if (err < 0) {
		FUNC4(hdev);
		FUNC6(data);
		return err;
	}

	FUNC8(func, data);

	return 0;
}