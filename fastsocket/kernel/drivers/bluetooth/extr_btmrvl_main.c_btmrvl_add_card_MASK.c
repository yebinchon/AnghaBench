#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct hci_dev {int /*<<< orphan*/  owner; int /*<<< orphan*/  ioctl; int /*<<< orphan*/  destruct; int /*<<< orphan*/  send; int /*<<< orphan*/  flush; int /*<<< orphan*/  close; int /*<<< orphan*/  open; int /*<<< orphan*/  type; struct btmrvl_private* driver_data; } ;
struct TYPE_4__ {int /*<<< orphan*/  task; int /*<<< orphan*/  wait_q; struct btmrvl_private* priv; } ;
struct TYPE_3__ {int tx_dnld_rdy; void* card; struct hci_dev* hcidev; } ;
struct btmrvl_private {TYPE_2__ main_thread; TYPE_1__ btmrvl_dev; int /*<<< orphan*/  driver_lock; void* adapter; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  HCI_SDIO ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int /*<<< orphan*/  btmrvl_close ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  btmrvl_destruct ; 
 int /*<<< orphan*/  btmrvl_flush ; 
 int /*<<< orphan*/  FUNC3 (struct btmrvl_private*) ; 
 int /*<<< orphan*/  FUNC4 (struct btmrvl_private*) ; 
 int /*<<< orphan*/  btmrvl_ioctl ; 
 int /*<<< orphan*/  btmrvl_open ; 
 int /*<<< orphan*/  btmrvl_send_frame ; 
 int /*<<< orphan*/  btmrvl_service_main_thread ; 
 struct hci_dev* FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (struct hci_dev*) ; 
 int FUNC7 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (struct btmrvl_private*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_2__*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 void* FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

struct btmrvl_private *FUNC14(void *card)
{
	struct hci_dev *hdev = NULL;
	struct btmrvl_private *priv;
	int ret;

	priv = FUNC12(sizeof(*priv), GFP_KERNEL);
	if (!priv) {
		FUNC1("Can not allocate priv");
		goto err_priv;
	}

	priv->adapter = FUNC12(sizeof(*priv->adapter), GFP_KERNEL);
	if (!priv->adapter) {
		FUNC1("Allocate buffer for btmrvl_adapter failed!");
		goto err_adapter;
	}

	FUNC4(priv);

	hdev = FUNC5();
	if (!hdev) {
		FUNC1("Can not allocate HCI device");
		goto err_hdev;
	}

	FUNC0("Starting kthread...");
	priv->main_thread.priv = priv;
	FUNC13(&priv->driver_lock);

	FUNC8(&priv->main_thread.wait_q);
	priv->main_thread.task = FUNC10(btmrvl_service_main_thread,
				&priv->main_thread, "btmrvl_main_service");

	priv->btmrvl_dev.hcidev = hdev;
	priv->btmrvl_dev.card = card;

	hdev->driver_data = priv;

	priv->btmrvl_dev.tx_dnld_rdy = true;

	hdev->type = HCI_SDIO;
	hdev->open = btmrvl_open;
	hdev->close = btmrvl_close;
	hdev->flush = btmrvl_flush;
	hdev->send = btmrvl_send_frame;
	hdev->destruct = btmrvl_destruct;
	hdev->ioctl = btmrvl_ioctl;
	hdev->owner = THIS_MODULE;

	ret = FUNC7(hdev);
	if (ret < 0) {
		FUNC1("Can not register HCI device");
		goto err_hci_register_dev;
	}

#ifdef CONFIG_DEBUG_FS
	btmrvl_debugfs_init(hdev);
#endif

	return priv;

err_hci_register_dev:
	/* Stop the thread servicing the interrupts */
	FUNC11(priv->main_thread.task);

	FUNC6(hdev);

err_hdev:
	FUNC3(priv);

err_adapter:
	FUNC9(priv);

err_priv:
	return NULL;
}