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
struct usb_interface {int /*<<< orphan*/  dev; } ;
struct usb_device_id {scalar_t__ driver_info; } ;
struct usb_device {int dummy; } ;
struct mib_fw_version {int major; int minor; } ;
struct TYPE_2__ {scalar_t__ major; int minor; } ;
struct fwentry {TYPE_1__ fw_version; } ;
struct at76_priv {int board_type; int /*<<< orphan*/  fw_version; } ;
typedef  int /*<<< orphan*/  fwv ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_DEVSTART ; 
 int EBUSY ; 
 int ENOENT ; 
 int ENOMEM ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  MIB_FW_VERSION ; 
 int OPMODE_HW_CONFIG_MODE ; 
 int OPMODE_NORMAL_NIC_WITHOUT_FLASH ; 
 int OPMODE_NORMAL_NIC_WITH_FLASH ; 
 struct at76_priv* FUNC0 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct at76_priv*) ; 
 int FUNC3 (struct usb_device*,int /*<<< orphan*/ ,struct mib_fw_version*,int) ; 
 int FUNC4 (struct usb_device*) ; 
 int FUNC5 (struct at76_priv*,struct usb_interface*) ; 
 int FUNC6 (struct usb_device*,struct fwentry*) ; 
 struct fwentry* FUNC7 (struct usb_device*,int) ; 
 int FUNC8 (struct usb_device*,struct fwentry*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_interface*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,struct mib_fw_version*,int) ; 
 struct usb_device* FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (struct usb_device*) ; 
 int /*<<< orphan*/  FUNC14 (struct usb_interface*,struct at76_priv*) ; 

__attribute__((used)) static int FUNC15(struct usb_interface *interface,
		      const struct usb_device_id *id)
{
	int ret;
	struct at76_priv *priv;
	struct fwentry *fwe;
	struct usb_device *udev;
	int op_mode;
	int need_ext_fw = 0;
	struct mib_fw_version fwv;
	int board_type = (int)id->driver_info;

	udev = FUNC12(FUNC10(interface));

	/* Load firmware into kernel memory */
	fwe = FUNC7(udev, board_type);
	if (!fwe) {
		ret = -ENOENT;
		goto error;
	}

	op_mode = FUNC4(udev);

	FUNC1(DBG_DEVSTART, "opmode %d", op_mode);

	/* we get OPMODE_NONE with 2.4.23, SMC2662W-AR ???
	   we get 204 with 2.4.23, Fiberline FL-WL240u (505A+RFMD2958) ??? */

	if (op_mode == OPMODE_HW_CONFIG_MODE) {
		FUNC9(KERN_ERR, &interface->dev,
			   "cannot handle a device in HW_CONFIG_MODE\n");
		ret = -EBUSY;
		goto error;
	}

	if (op_mode != OPMODE_NORMAL_NIC_WITH_FLASH
	    && op_mode != OPMODE_NORMAL_NIC_WITHOUT_FLASH) {
		/* download internal firmware part */
		FUNC9(KERN_DEBUG, &interface->dev,
			   "downloading internal firmware\n");
		ret = FUNC8(udev, fwe);
		if (ret < 0) {
			FUNC9(KERN_ERR, &interface->dev,
				   "error %d downloading internal firmware\n",
				   ret);
			goto error;
		}
		FUNC13(udev);
		return ret;
	}

	/* Internal firmware already inside the device.  Get firmware
	 * version to test if external firmware is loaded.
	 * This works only for newer firmware, e.g. the Intersil 0.90.x
	 * says "control timeout on ep0in" and subsequent
	 * at76_get_op_mode() fail too :-( */

	/* if version >= 0.100.x.y or device with built-in flash we can
	 * query the device for the fw version */
	if ((fwe->fw_version.major > 0 || fwe->fw_version.minor >= 100)
	    || (op_mode == OPMODE_NORMAL_NIC_WITH_FLASH)) {
		ret = FUNC3(udev, MIB_FW_VERSION, &fwv, sizeof(fwv));
		if (ret < 0 || (fwv.major | fwv.minor) == 0)
			need_ext_fw = 1;
	} else
		/* No way to check firmware version, reload to be sure */
		need_ext_fw = 1;

	if (need_ext_fw) {
		FUNC9(KERN_DEBUG, &interface->dev,
			   "downloading external firmware\n");

		ret = FUNC6(udev, fwe);
		if (ret)
			goto error;

		/* Re-check firmware version */
		ret = FUNC3(udev, MIB_FW_VERSION, &fwv, sizeof(fwv));
		if (ret < 0) {
			FUNC9(KERN_ERR, &interface->dev,
				   "error %d getting firmware version\n", ret);
			goto error;
		}
	}

	priv = FUNC0(udev);
	if (!priv) {
		ret = -ENOMEM;
		goto error;
	}

	FUNC14(interface, priv);

	FUNC11(&priv->fw_version, &fwv, sizeof(struct mib_fw_version));
	priv->board_type = board_type;

	ret = FUNC5(priv, interface);
	if (ret < 0)
		FUNC2(priv);

	return ret;

error:
	FUNC13(udev);
	return ret;
}