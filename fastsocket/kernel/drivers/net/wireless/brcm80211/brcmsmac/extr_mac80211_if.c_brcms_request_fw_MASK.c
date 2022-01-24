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
struct firmware_hdr {int dummy; } ;
struct device {int dummy; } ;
struct TYPE_4__ {int* hdr_num_entries; int fw_cnt; TYPE_1__** fw_hdr; TYPE_1__** fw_bin; } ;
struct brcms_info {int /*<<< orphan*/  ucode; TYPE_2__ fw; int /*<<< orphan*/  wiphy; } ;
struct brcms_firmware {int dummy; } ;
struct bcma_device {struct device dev; } ;
struct TYPE_3__ {int size; } ;

/* Variables and functions */
 int /*<<< orphan*/  KBUILD_MODNAME ; 
 int MAX_FW_IMAGES ; 
 int UCODE_LOADER_API_VER ; 
 char** brcms_firmwares ; 
 int /*<<< orphan*/  FUNC0 (struct brcms_info*) ; 
 int FUNC1 (struct brcms_info*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC3 (TYPE_1__**,char*,struct device*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct brcms_info *wl, struct bcma_device *pdev)
{
	int status;
	struct device *device = &pdev->dev;
	char fw_name[100];
	int i;

	FUNC2(&wl->fw, 0, sizeof(struct brcms_firmware));
	for (i = 0; i < MAX_FW_IMAGES; i++) {
		if (brcms_firmwares[i] == NULL)
			break;
		FUNC4(fw_name, "%s-%d.fw", brcms_firmwares[i],
			UCODE_LOADER_API_VER);
		status = FUNC3(&wl->fw.fw_bin[i], fw_name, device);
		if (status) {
			FUNC5(wl->wiphy, "%s: fail to load firmware %s\n",
				  KBUILD_MODNAME, fw_name);
			return status;
		}
		FUNC4(fw_name, "%s_hdr-%d.fw", brcms_firmwares[i],
			UCODE_LOADER_API_VER);
		status = FUNC3(&wl->fw.fw_hdr[i], fw_name, device);
		if (status) {
			FUNC5(wl->wiphy, "%s: fail to load firmware %s\n",
				  KBUILD_MODNAME, fw_name);
			return status;
		}
		wl->fw.hdr_num_entries[i] =
		    wl->fw.fw_hdr[i]->size / (sizeof(struct firmware_hdr));
	}
	wl->fw.fw_cnt = i;
	status = FUNC1(wl, &wl->ucode);
	FUNC0(wl);
	return status;
}