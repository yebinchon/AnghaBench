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
struct urb {scalar_t__ status; struct if_usb_card* context; } ;
struct sk_buff {scalar_t__ data; } ;
struct if_usb_card {int fwdnldover; scalar_t__ bootcmdresp; int CRC_OK; scalar_t__ fwfinalblk; int /*<<< orphan*/  fw_timeout; TYPE_2__* udev; int /*<<< orphan*/  fw_wq; struct sk_buff* rx_skb; } ;
struct fwsyncheader {scalar_t__ seqnum; int /*<<< orphan*/  cmd; } ;
struct bootcmdresp {scalar_t__ magic; scalar_t__ cmd; scalar_t__ result; } ;
typedef  int /*<<< orphan*/  bcmdresp ;
typedef  scalar_t__ __le32 ;
struct TYPE_3__ {int /*<<< orphan*/  bcdDevice; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; TYPE_1__ descriptor; } ;

/* Variables and functions */
 scalar_t__ BOOT_CMD_FW_BY_USB ; 
 int /*<<< orphan*/  BOOT_CMD_MAGIC_NUMBER ; 
 scalar_t__ BOOT_CMD_RESP_OK ; 
 int /*<<< orphan*/  CMD_TYPE_DATA ; 
 int /*<<< orphan*/  CMD_TYPE_INDICATION ; 
 int /*<<< orphan*/  CMD_TYPE_REQUEST ; 
 int /*<<< orphan*/  GFP_ATOMIC ; 
 int HZ ; 
 int /*<<< orphan*/  LBTF_DEB_USB ; 
 int /*<<< orphan*/  MACREG_INT_CODE_FIRMWARE_READY ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct if_usb_card*) ; 
 int /*<<< orphan*/  FUNC2 (struct if_usb_card*) ; 
 scalar_t__ jiffies ; 
 int /*<<< orphan*/  FUNC3 (struct fwsyncheader*) ; 
 int /*<<< orphan*/  FUNC4 (struct sk_buff*) ; 
 struct fwsyncheader* FUNC5 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (struct bootcmdresp*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (char*,...) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC17(struct urb *urb)
{
	struct if_usb_card *cardp = urb->context;
	struct sk_buff *skb = cardp->rx_skb;
	struct fwsyncheader *syncfwheader;
	struct bootcmdresp bcmdresp;

	FUNC6(LBTF_DEB_USB);
	if (urb->status) {
		FUNC10(&cardp->udev->dev,
			     "URB status is failed during fw load\n");
		FUNC4(skb);
		FUNC7(LBTF_DEB_USB);
		return;
	}

	if (cardp->fwdnldover) {
		__le32 *tmp = (__le32 *)(skb->data);

		if (tmp[0] == FUNC0(CMD_TYPE_INDICATION) &&
		    tmp[1] == FUNC0(MACREG_INT_CODE_FIRMWARE_READY)) {
			/* Firmware ready event received */
			FUNC15("Firmware ready event received\n");
			FUNC16(&cardp->fw_wq);
		} else {
			FUNC8("Waiting for confirmation; got %x %x\n",
				    FUNC12(tmp[0]), FUNC12(tmp[1]));
			FUNC2(cardp);
		}
		FUNC4(skb);
		FUNC7(LBTF_DEB_USB);
		return;
	}
	if (cardp->bootcmdresp <= 0) {
		FUNC13(&bcmdresp, skb->data, sizeof(bcmdresp));

		if (FUNC11(cardp->udev->descriptor.bcdDevice) < 0x3106) {
			FUNC4(skb);
			FUNC2(cardp);
			cardp->bootcmdresp = 1;
			/* Received valid boot command response */
			FUNC10(&cardp->udev->dev,
				     "Received valid boot command response\n");
			FUNC7(LBTF_DEB_USB);
			return;
		}
		if (bcmdresp.magic != FUNC0(BOOT_CMD_MAGIC_NUMBER)) {
			if (bcmdresp.magic == FUNC0(CMD_TYPE_REQUEST) ||
			    bcmdresp.magic == FUNC0(CMD_TYPE_DATA) ||
			    bcmdresp.magic == FUNC0(CMD_TYPE_INDICATION)) {
				if (!cardp->bootcmdresp)
					FUNC15("Firmware already seems alive; resetting\n");
				cardp->bootcmdresp = -1;
			} else {
				FUNC15("boot cmd response wrong magic number (0x%x)\n",
					    FUNC12(bcmdresp.magic));
			}
		} else if (bcmdresp.cmd != BOOT_CMD_FW_BY_USB) {
			FUNC15("boot cmd response cmd_tag error (%d)\n",
				bcmdresp.cmd);
		} else if (bcmdresp.result != BOOT_CMD_RESP_OK) {
			FUNC15("boot cmd response result error (%d)\n",
				bcmdresp.result);
		} else {
			cardp->bootcmdresp = 1;
			FUNC10(&cardp->udev->dev,
				"Received valid boot command response\n");
		}

		FUNC4(skb);
		FUNC2(cardp);
		FUNC7(LBTF_DEB_USB);
		return;
	}

	syncfwheader = FUNC5(skb->data, sizeof(struct fwsyncheader),
			       GFP_ATOMIC);
	if (!syncfwheader) {
		FUNC10(&cardp->udev->dev,
			"Failure to allocate syncfwheader\n");
		FUNC4(skb);
		FUNC7(LBTF_DEB_USB);
		return;
	}

	if (!syncfwheader->cmd) {
		FUNC9(&cardp->udev->dev,
			"FW received Blk with correct CRC\n");
		FUNC9(&cardp->udev->dev,
			"FW received Blk seqnum = %d\n",
			FUNC12(syncfwheader->seqnum));
		cardp->CRC_OK = 1;
	} else {
		FUNC10(&cardp->udev->dev,
			"FW received Blk with CRC error\n");
		cardp->CRC_OK = 0;
	}

	FUNC4(skb);

	/* reschedule timer for 200ms hence */
	FUNC14(&cardp->fw_timeout, jiffies + (HZ/5));

	if (cardp->fwfinalblk) {
		cardp->fwdnldover = 1;
		goto exit;
	}

	FUNC1(cardp);

 exit:
	FUNC2(cardp);

	FUNC3(syncfwheader);

	FUNC7(LBTF_DEB_USB);
}