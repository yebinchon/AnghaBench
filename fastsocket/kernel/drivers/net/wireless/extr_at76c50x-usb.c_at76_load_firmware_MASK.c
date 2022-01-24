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
typedef  int /*<<< orphan*/  u8 ;
struct usb_device {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {int /*<<< orphan*/  build; int /*<<< orphan*/  patch; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; } ;
struct fwentry {int loaded; char* fwname; int board_type; int intfw_size; int extfw_size; int /*<<< orphan*/ * extfw; int /*<<< orphan*/ * intfw; TYPE_1__ fw_version; TYPE_2__* fw; } ;
struct at76_fw_header {int /*<<< orphan*/  ext_fw_len; int /*<<< orphan*/  ext_fw_offset; int /*<<< orphan*/  int_fw_len; int /*<<< orphan*/  int_fw_offset; int /*<<< orphan*/  build; int /*<<< orphan*/  patch; int /*<<< orphan*/  minor; int /*<<< orphan*/  major; int /*<<< orphan*/  str_offset; int /*<<< orphan*/  board_type; } ;
typedef  enum board_type { ____Placeholder_board_type } board_type ;
struct TYPE_4__ {int size; scalar_t__ data; } ;

/* Variables and functions */
 int /*<<< orphan*/  DBG_DEVSTART ; 
 int /*<<< orphan*/  DBG_FW ; 
 int /*<<< orphan*/  KERN_DEBUG ; 
 int /*<<< orphan*/  KERN_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*,...) ; 
 struct fwentry* firmwares ; 
 int /*<<< orphan*/  fw_mutex ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (TYPE_2__**,char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static struct fwentry *FUNC6(struct usb_device *udev,
					  enum board_type board_type)
{
	int ret;
	char *str;
	struct at76_fw_header *fwh;
	struct fwentry *fwe = &firmwares[board_type];

	FUNC3(&fw_mutex);

	if (fwe->loaded) {
		FUNC0(DBG_FW, "re-using previously loaded fw");
		goto exit;
	}

	FUNC0(DBG_FW, "downloading firmware %s", fwe->fwname);
	ret = FUNC5(&fwe->fw, fwe->fwname, &udev->dev);
	if (ret < 0) {
		FUNC1(KERN_ERR, &udev->dev, "firmware %s not found!\n",
			   fwe->fwname);
		FUNC1(KERN_ERR, &udev->dev,
			   "you may need to download the firmware from "
			   "http://developer.berlios.de/projects/at76c503a/\n");
		goto exit;
	}

	FUNC0(DBG_FW, "got it.");
	fwh = (struct at76_fw_header *)(fwe->fw->data);

	if (fwe->fw->size <= sizeof(*fwh)) {
		FUNC1(KERN_ERR, &udev->dev,
			   "firmware is too short (0x%zx)\n", fwe->fw->size);
		goto exit;
	}

	/* CRC currently not checked */
	fwe->board_type = FUNC2(fwh->board_type);
	if (fwe->board_type != board_type) {
		FUNC1(KERN_ERR, &udev->dev,
			   "board type mismatch, requested %u, got %u\n",
			   board_type, fwe->board_type);
		goto exit;
	}

	fwe->fw_version.major = fwh->major;
	fwe->fw_version.minor = fwh->minor;
	fwe->fw_version.patch = fwh->patch;
	fwe->fw_version.build = fwh->build;

	str = (char *)fwh + FUNC2(fwh->str_offset);
	fwe->intfw = (u8 *)fwh + FUNC2(fwh->int_fw_offset);
	fwe->intfw_size = FUNC2(fwh->int_fw_len);
	fwe->extfw = (u8 *)fwh + FUNC2(fwh->ext_fw_offset);
	fwe->extfw_size = FUNC2(fwh->ext_fw_len);

	fwe->loaded = 1;

	FUNC1(KERN_DEBUG, &udev->dev,
		   "using firmware %s (version %d.%d.%d-%d)\n",
		   fwe->fwname, fwh->major, fwh->minor, fwh->patch, fwh->build);

	FUNC0(DBG_DEVSTART, "board %u, int %d:%d, ext %d:%d", board_type,
		 FUNC2(fwh->int_fw_offset), FUNC2(fwh->int_fw_len),
		 FUNC2(fwh->ext_fw_offset), FUNC2(fwh->ext_fw_len));
	FUNC0(DBG_DEVSTART, "firmware id %s", str);

exit:
	FUNC4(&fw_mutex);

	if (fwe->loaded)
		return fwe;
	else
		return NULL;
}