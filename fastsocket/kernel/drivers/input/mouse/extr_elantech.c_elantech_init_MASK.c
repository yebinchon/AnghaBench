#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {TYPE_2__* serio; } ;
struct psmouse {int pktsize; int /*<<< orphan*/  reconnect; int /*<<< orphan*/  disconnect; int /*<<< orphan*/  protocol_handler; TYPE_3__ ps2dev; struct elantech_data* private; } ;
struct elantech_data {int* parity; unsigned char fw_version_maj; unsigned char fw_version_min; int hw_version; int debug; int paritycheck; unsigned char capabilities; int jumpy_cursor; } ;
struct TYPE_4__ {int /*<<< orphan*/  kobj; } ;
struct TYPE_5__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  ETP_CAPABILITIES_QUERY ; 
 int /*<<< orphan*/  ETP_FW_VERSION_QUERY ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  elantech_attr_group ; 
 int /*<<< orphan*/  elantech_disconnect ; 
 int /*<<< orphan*/  elantech_process_byte ; 
 int /*<<< orphan*/  elantech_reconnect ; 
 scalar_t__ FUNC0 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC1 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC2 (struct elantech_data*) ; 
 struct elantech_data* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (struct psmouse*,int /*<<< orphan*/ ,unsigned char*) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC8(struct psmouse *psmouse)
{
	struct elantech_data *etd;
	int i, error;
	unsigned char param[3];

	psmouse->private = etd = FUNC3(sizeof(struct elantech_data), GFP_KERNEL);
	if (!etd)
		return -1;

	etd->parity[0] = 1;
	for (i = 1; i < 256; i++)
		etd->parity[i] = etd->parity[i & (i - 1)] ^ 1;

	/*
	 * Do the version query again so we can store the result
	 */
	if (FUNC6(psmouse, ETP_FW_VERSION_QUERY, param)) {
		FUNC4("elantech.c: failed to query firmware version.\n");
		goto init_fail;
	}
	etd->fw_version_maj = param[0];
	etd->fw_version_min = param[2];

	/*
	 * Assume every version greater than this is new EeePC style
	 * hardware with 6 byte packets
	 */
	if (etd->fw_version_maj >= 0x02 && etd->fw_version_min >= 0x30) {
		etd->hw_version = 2;
		/* For now show extra debug information */
		etd->debug = 1;
		/* Don't know how to do parity checking for version 2 */
		etd->paritycheck = 0;
	} else {
		etd->hw_version = 1;
		etd->paritycheck = 1;
	}
	FUNC5("elantech.c: assuming hardware version %d, firmware version %d.%d\n",
		etd->hw_version, etd->fw_version_maj, etd->fw_version_min);

	if (FUNC6(psmouse, ETP_CAPABILITIES_QUERY, param)) {
		FUNC4("elantech.c: failed to query capabilities.\n");
		goto init_fail;
	}
	FUNC5("elantech.c: Synaptics capabilities query result 0x%02x, 0x%02x, 0x%02x.\n",
		param[0], param[1], param[2]);
	etd->capabilities = param[0];

	/*
	 * This firmware seems to suffer from misreporting coordinates when
	 * a touch action starts causing the mouse cursor or scrolled page
	 * to jump. Enable a workaround.
	 */
	if (etd->fw_version_maj == 0x02 && etd->fw_version_min == 0x22) {
		FUNC5("elantech.c: firmware version 2.34 detected, "
			"enabling jumpy cursor workaround\n");
		etd->jumpy_cursor = 1;
	}

	if (FUNC0(psmouse)) {
		FUNC4("elantech.c: failed to put touchpad into absolute mode.\n");
		goto init_fail;
	}

	FUNC1(psmouse);

	error = FUNC7(&psmouse->ps2dev.serio->dev.kobj,
				   &elantech_attr_group);
	if (error) {
		FUNC4("elantech.c: failed to create sysfs attributes, error: %d.\n",
			error);
		goto init_fail;
	}

	psmouse->protocol_handler = elantech_process_byte;
	psmouse->disconnect = elantech_disconnect;
	psmouse->reconnect = elantech_reconnect;
	psmouse->pktsize = etd->hw_version == 2 ? 6 : 4;

	return 0;

 init_fail:
	FUNC2(etd);
	return -1;
}