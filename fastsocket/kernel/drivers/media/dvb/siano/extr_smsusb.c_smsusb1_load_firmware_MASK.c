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
typedef  int /*<<< orphan*/  u8 ;
struct usb_device {int /*<<< orphan*/  dev; } ;
struct firmware {int /*<<< orphan*/  size; int /*<<< orphan*/  data; } ;

/* Variables and functions */
 int DEVICE_MODE_DVBT ; 
 int DEVICE_MODE_DVBT_BDA ; 
 int EINVAL ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct firmware const*) ; 
 int FUNC4 (struct firmware const**,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 char* FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int,...) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,int) ; 
 char** smsusb1_fw_lkup ; 
 int FUNC9 (struct usb_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct usb_device*,int) ; 

__attribute__((used)) static int FUNC11(struct usb_device *udev, int id, int board_id)
{
	const struct firmware *fw;
	u8 *fw_buffer;
	int rc, dummy;
	char *fw_filename;

	if (id < DEVICE_MODE_DVBT || id > DEVICE_MODE_DVBT_BDA) {
		FUNC5("invalid firmware id specified %d", id);
		return -EINVAL;
	}

	fw_filename = FUNC6(id, board_id);

	rc = FUNC4(&fw, fw_filename, &udev->dev);
	if (rc < 0) {
		FUNC8("failed to open \"%s\" mode %d, "
			 "trying again with default firmware", fw_filename, id);

		fw_filename = smsusb1_fw_lkup[id];
		rc = FUNC4(&fw, fw_filename, &udev->dev);
		if (rc < 0) {
			FUNC8("failed to open \"%s\" mode %d",
				 fw_filename, id);

			return rc;
		}
	}

	fw_buffer = FUNC1(fw->size, GFP_KERNEL);
	if (fw_buffer) {
		FUNC2(fw_buffer, fw->data, fw->size);

		rc = FUNC9(udev, FUNC10(udev, 2),
				  fw_buffer, fw->size, &dummy, 1000);

		FUNC7("sent %zd(%d) bytes, rc %d", fw->size, dummy, rc);

		FUNC0(fw_buffer);
	} else {
		FUNC5("failed to allocate firmware buffer");
		rc = -ENOMEM;
	}
	FUNC7("read FW %s, size=%zd", fw_filename, fw->size);

	FUNC3(fw);

	return rc;
}