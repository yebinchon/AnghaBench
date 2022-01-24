#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct if_usb_card {scalar_t__ bootcmdresp; int CRC_OK; int fwseqnum; TYPE_2__* fw; scalar_t__ fwdnldover; int /*<<< orphan*/  rx_urb; int /*<<< orphan*/  fw_timeout; scalar_t__ surprise_removed; int /*<<< orphan*/  fw_wq; scalar_t__ fwfinalblk; scalar_t__ totalbytes; scalar_t__ fwlastblksent; int /*<<< orphan*/  tx_urb; TYPE_1__* udev; } ;
struct TYPE_5__ {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 scalar_t__ BOOT_CMD_RESP_NOT_SUPPORTED ; 
 int EINVAL ; 
 int EIO ; 
 int EOPNOTSUPP ; 
 int /*<<< orphan*/  LBS_DEB_USB ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct if_usb_card*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct if_usb_card*) ; 
 int /*<<< orphan*/  FUNC4 (struct if_usb_card*) ; 
 scalar_t__ FUNC5 (struct if_usb_card*) ; 
 scalar_t__ FUNC6 (struct if_usb_card*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,...) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int FUNC14 (TYPE_2__**,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC17(struct if_usb_card *cardp,
					const char *fwname, int cmd)
{
	int i = 0;
	static int reset_count = 10;
	int ret = 0;

	FUNC7(LBS_DEB_USB);

	ret = FUNC14(&cardp->fw, fwname, &cardp->udev->dev);
	if (ret < 0) {
		FUNC10("request_firmware() failed with %#x\n", ret);
		FUNC10("firmware %s not found\n", fwname);
		goto done;
	}

	if (FUNC0(cardp->fw->data, cardp->fw->size)) {
		ret = -EINVAL;
		goto release_fw;
	}

	/* Cancel any pending usb business */
	FUNC15(cardp->rx_urb);
	FUNC15(cardp->tx_urb);

	cardp->fwlastblksent = 0;
	cardp->fwdnldover = 0;
	cardp->totalbytes = 0;
	cardp->fwfinalblk = 0;
	cardp->bootcmdresp = 0;

restart:
	if (FUNC6(cardp) < 0) {
		FUNC9(&cardp->udev->dev, "URB submission is failed\n");
		ret = -EIO;
		goto release_fw;
	}

	cardp->bootcmdresp = 0;
	do {
		int j = 0;
		i++;
		FUNC2(cardp, cmd);
		/* wait for command response */
		do {
			j++;
			FUNC12(100);
		} while (cardp->bootcmdresp == 0 && j < 10);
	} while (cardp->bootcmdresp == 0 && i < 5);

	if (cardp->bootcmdresp == BOOT_CMD_RESP_NOT_SUPPORTED) {
		/* Return to normal operation */
		ret = -EOPNOTSUPP;
		FUNC15(cardp->rx_urb);
		FUNC15(cardp->tx_urb);
		if (FUNC5(cardp) < 0)
			ret = -EIO;
		goto release_fw;
	} else if (cardp->bootcmdresp <= 0) {
		if (--reset_count >= 0) {
			FUNC3(cardp);
			goto restart;
		}
		ret = -EIO;
		goto release_fw;
	}

	i = 0;

	cardp->totalbytes = 0;
	cardp->fwlastblksent = 0;
	cardp->CRC_OK = 1;
	cardp->fwdnldover = 0;
	cardp->fwseqnum = -1;
	cardp->totalbytes = 0;
	cardp->fwfinalblk = 0;

	/* Send the first firmware packet... */
	FUNC4(cardp);

	/* ... and wait for the process to complete */
	FUNC16(cardp->fw_wq, cardp->surprise_removed || cardp->fwdnldover);

	FUNC1(&cardp->fw_timeout);
	FUNC15(cardp->rx_urb);

	if (!cardp->fwdnldover) {
		FUNC11("failed to load fw, resetting device!\n");
		if (--reset_count >= 0) {
			FUNC3(cardp);
			goto restart;
		}

		FUNC11("FW download failure, time = %d ms\n", i * 100);
		ret = -EIO;
		goto release_fw;
	}

 release_fw:
	FUNC13(cardp->fw);
	cardp->fw = NULL;

 done:
	FUNC8(LBS_DEB_USB, "ret %d", ret);
	return ret;
}