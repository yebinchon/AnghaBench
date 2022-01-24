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
struct sdio_func {int /*<<< orphan*/  num; } ;
struct sdio_device_id {scalar_t__ driver_data; int /*<<< orphan*/  class; int /*<<< orphan*/  device; int /*<<< orphan*/  vendor; } ;
struct btmrvl_sdio_device {int /*<<< orphan*/  firmware; int /*<<< orphan*/  helper; } ;
struct btmrvl_sdio_card {struct btmrvl_private* priv; int /*<<< orphan*/  firmware; int /*<<< orphan*/  helper; struct sdio_func* func; } ;
struct btmrvl_private {int /*<<< orphan*/  hw_wakeup_firmware; int /*<<< orphan*/  hw_host_to_card; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  MODULE_BRINGUP_REQ ; 
 struct btmrvl_private* FUNC2 (struct btmrvl_sdio_card*) ; 
 int /*<<< orphan*/  FUNC3 (struct btmrvl_sdio_card*) ; 
 scalar_t__ FUNC4 (struct btmrvl_sdio_card*) ; 
 int /*<<< orphan*/  FUNC5 (struct btmrvl_sdio_card*) ; 
 int /*<<< orphan*/  btmrvl_sdio_host_to_card ; 
 scalar_t__ FUNC6 (struct btmrvl_sdio_card*) ; 
 int /*<<< orphan*/  FUNC7 (struct btmrvl_sdio_card*) ; 
 int /*<<< orphan*/  btmrvl_sdio_wakeup_fw ; 
 int /*<<< orphan*/  FUNC8 (struct btmrvl_private*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct btmrvl_sdio_card*) ; 
 struct btmrvl_sdio_card* FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 

__attribute__((used)) static int FUNC12(struct sdio_func *func,
					const struct sdio_device_id *id)
{
	int ret = 0;
	struct btmrvl_private *priv = NULL;
	struct btmrvl_sdio_card *card = NULL;

	FUNC1("vendor=0x%x, device=0x%x, class=%d, fn=%d",
			id->vendor, id->device, id->class, func->num);

	card = FUNC10(sizeof(*card), GFP_KERNEL);
	if (!card) {
		ret = -ENOMEM;
		goto done;
	}

	card->func = func;

	if (id->driver_data) {
		struct btmrvl_sdio_device *data = (void *) id->driver_data;
		card->helper   = data->helper;
		card->firmware = data->firmware;
	}

	if (FUNC6(card) < 0) {
		FUNC0("Failed to register BT device!");
		ret = -ENODEV;
		goto free_card;
	}

	/* Disable the interrupts on the card */
	FUNC3(card);

	if (FUNC4(card)) {
		FUNC0("Downloading firmware failed!");
		ret = -ENODEV;
		goto unreg_dev;
	}

	FUNC11(100);

	FUNC5(card);

	priv = FUNC2(card);
	if (!priv) {
		FUNC0("Initializing card failed!");
		ret = -ENODEV;
		goto disable_host_int;
	}

	card->priv = priv;

	/* Initialize the interface specific function pointers */
	priv->hw_host_to_card = btmrvl_sdio_host_to_card;
	priv->hw_wakeup_firmware = btmrvl_sdio_wakeup_fw;

	FUNC8(priv, MODULE_BRINGUP_REQ);

	return 0;

disable_host_int:
	FUNC3(card);
unreg_dev:
	FUNC7(card);
free_card:
	FUNC9(card);
done:
	return ret;
}