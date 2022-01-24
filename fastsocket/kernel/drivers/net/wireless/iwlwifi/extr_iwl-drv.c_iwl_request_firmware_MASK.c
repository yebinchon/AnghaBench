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
struct iwl_drv {int fw_index; TYPE_2__* trans; int /*<<< orphan*/  firmware_name; TYPE_1__* cfg; } ;
struct TYPE_4__ {int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {char* fw_name_pre; int ucode_api_max; int ucode_api_min; } ;

/* Variables and functions */
 int ENOENT ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (struct iwl_drv*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct iwl_drv*,char*) ; 
 int /*<<< orphan*/  THIS_MODULE ; 
 int UCODE_EXPERIMENTAL_INDEX ; 
 int /*<<< orphan*/  UCODE_EXPERIMENTAL_TAG ; 
 int /*<<< orphan*/  iwl_req_fw_callback ; 
 int FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct iwl_drv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct iwl_drv *drv, bool first)
{
	const char *name_pre = drv->cfg->fw_name_pre;
	char tag[8];

	if (first) {
#ifdef CONFIG_IWLWIFI_DEBUG_EXPERIMENTAL_UCODE
		drv->fw_index = UCODE_EXPERIMENTAL_INDEX;
		strcpy(tag, UCODE_EXPERIMENTAL_TAG);
	} else if (drv->fw_index == UCODE_EXPERIMENTAL_INDEX) {
#endif
		drv->fw_index = drv->cfg->ucode_api_max;
		FUNC3(tag, "%d", drv->fw_index);
	} else {
		drv->fw_index--;
		FUNC3(tag, "%d", drv->fw_index);
	}

	if (drv->fw_index < drv->cfg->ucode_api_min) {
		FUNC1(drv, "no suitable firmware found!\n");
		return -ENOENT;
	}

	FUNC3(drv->firmware_name, "%s%s%s", name_pre, tag, ".ucode");

	FUNC0(drv, "attempting to load firmware %s'%s'\n",
		       (drv->fw_index == UCODE_EXPERIMENTAL_INDEX)
				? "EXPERIMENTAL " : "",
		       drv->firmware_name);

	return FUNC2(THIS_MODULE, 1, drv->firmware_name,
				       drv->trans->dev,
				       GFP_KERNEL, drv, iwl_req_fw_callback);
}