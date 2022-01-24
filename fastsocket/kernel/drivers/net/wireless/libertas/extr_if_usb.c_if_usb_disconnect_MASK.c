#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct usb_interface {int dummy; } ;
struct lbs_private {int surpriseremoved; TYPE_1__* dev; } ;
struct if_usb_card {int surprise_removed; scalar_t__ priv; } ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  LBS_DEB_MAIN ; 
 int /*<<< orphan*/  dev_attr_lbs_flash_boot2 ; 
 int /*<<< orphan*/  dev_attr_lbs_flash_fw ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct if_usb_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct lbs_private*) ; 
 int /*<<< orphan*/  FUNC6 (struct lbs_private*) ; 
 struct if_usb_card* FUNC7 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct usb_interface*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC10(struct usb_interface *intf)
{
	struct if_usb_card *cardp = FUNC7(intf);
	struct lbs_private *priv = (struct lbs_private *) cardp->priv;

	FUNC3(LBS_DEB_MAIN);

	FUNC0(&priv->dev->dev, &dev_attr_lbs_flash_boot2);
	FUNC0(&priv->dev->dev, &dev_attr_lbs_flash_fw);

	cardp->surprise_removed = 1;

	if (priv) {
		priv->surpriseremoved = 1;
		FUNC6(priv);
		FUNC5(priv);
	}

	/* Unlink and free urb */
	FUNC1(cardp);

	FUNC9(intf, NULL);
	FUNC8(FUNC2(intf));

	FUNC4(LBS_DEB_MAIN);
}