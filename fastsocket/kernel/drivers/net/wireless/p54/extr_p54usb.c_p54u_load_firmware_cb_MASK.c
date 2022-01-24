#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {struct device* parent; } ;
struct usb_device {TYPE_1__ dev; } ;
struct p54u_priv {struct usb_device* udev; struct firmware const* fw; int /*<<< orphan*/  fw_wait_load; } ;
struct firmware {int dummy; } ;
struct device {int dummy; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (struct device*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (struct device*) ; 
 int FUNC5 (struct p54u_priv*) ; 
 int /*<<< orphan*/  FUNC6 (struct usb_device*) ; 

__attribute__((used)) static void FUNC7(const struct firmware *firmware,
				  void *context)
{
	struct p54u_priv *priv = context;
	struct usb_device *udev = priv->udev;
	int err;

	FUNC0(&priv->fw_wait_load);
	if (firmware) {
		priv->fw = firmware;
		err = FUNC5(priv);
	} else {
		err = -ENOENT;
		FUNC1(&udev->dev, "Firmware not found.\n");
	}

	if (err) {
		struct device *parent = priv->udev->dev.parent;

		FUNC1(&udev->dev, "failed to initialize device (%d)\n", err);

		if (parent)
			FUNC2(parent);

		FUNC3(&udev->dev);
		/*
		 * At this point p54u_disconnect has already freed
		 * the "priv" context. Do not use it anymore!
		 */
		priv = NULL;

		if (parent)
			FUNC4(parent);
	}

	FUNC6(udev);
}