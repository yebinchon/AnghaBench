#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct hci_dev {int dummy; } ;
struct TYPE_6__ {struct hci_dev* hcidev; } ;
struct TYPE_5__ {int /*<<< orphan*/  task; } ;
struct btmrvl_private {TYPE_3__ btmrvl_dev; TYPE_2__ main_thread; TYPE_1__* adapter; } ;
struct TYPE_4__ {int /*<<< orphan*/  cmd_wait_q; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC1 (struct btmrvl_private*) ; 
 int /*<<< orphan*/  FUNC2 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC3 (struct hci_dev*) ; 
 int /*<<< orphan*/  FUNC4 (struct btmrvl_private*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

int FUNC7(struct btmrvl_private *priv)
{
	struct hci_dev *hdev;

	hdev = priv->btmrvl_dev.hcidev;

	FUNC6(&priv->adapter->cmd_wait_q);

	FUNC5(priv->main_thread.task);

#ifdef CONFIG_DEBUG_FS
	btmrvl_debugfs_remove(hdev);
#endif

	FUNC3(hdev);

	FUNC2(hdev);

	priv->btmrvl_dev.hcidev = NULL;

	FUNC1(priv);

	FUNC4(priv);

	return 0;
}