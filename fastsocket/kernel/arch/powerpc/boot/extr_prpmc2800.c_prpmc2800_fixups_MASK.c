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
typedef  int /*<<< orphan*/  v ;
typedef  char u32 ;
struct prpmc2800_board_info {char mem_size; scalar_t__ model; char variant; char core_speed; scalar_t__ bridge_type; char user_flash; } ;

/* Variables and functions */
 int /*<<< orphan*/  BOARD_MODEL ; 
 int BOARD_MODEL_MAX ; 
 scalar_t__ BOARD_MODEL_PRPMC280 ; 
 scalar_t__ BRIDGE_TYPE_MV64362 ; 
 int /*<<< orphan*/  bridge_base ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,char*,char*) ; 
 void* FUNC3 (char*) ; 
 int FUNC4 (void*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 char FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char) ; 
 struct prpmc2800_board_info* FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (void*,char*,char*,int) ; 
 char FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC12(void)
{
	u32 v[2], l, mem_size;
	int rc;
	void *devp;
	char model[BOARD_MODEL_MAX];
	struct prpmc2800_board_info *bip;

	bip = FUNC8(); /* Get board info based on VPD */

	mem_size = (bip) ? bip->mem_size : FUNC6(bridge_base);
	FUNC7(mem_size); /* Do necessary bridge setup */

	/* If the VPD doesn't match what we know about, just use the
	 * defaults already in the device tree.
	 */
	if (!bip)
		return;

	/* Know the board type so override device tree defaults */
	/* Set /model appropriately */
	devp = FUNC3("/");
	if (devp == NULL)
		FUNC0("Error: Missing '/' device tree node\n\r");
	FUNC5(model, 0, BOARD_MODEL_MAX);
	FUNC11(model, BOARD_MODEL, BOARD_MODEL_MAX - 2);
	l = FUNC10(model);
	if (bip->model == BOARD_MODEL_PRPMC280)
		l--;
	model[l++] = bip->variant;
	model[l++] = '\0';
	FUNC9(devp, "model", model, l);

	/* Set /cpus/PowerPC,7447/clock-frequency */
	devp = FUNC2(NULL, "device_type", "cpu");
	if (devp == NULL)
		FUNC0("Error: Missing proper cpu device tree node\n\r");
	v[0] = bip->core_speed;
	FUNC9(devp, "clock-frequency", &v[0], sizeof(v[0]));

	/* Set /memory/reg size */
	devp = FUNC3("/memory");
	if (devp == NULL)
		FUNC0("Error: Missing /memory device tree node\n\r");
	v[0] = 0;
	v[1] = bip->mem_size;
	FUNC9(devp, "reg", v, sizeof(v));

	/* Update model, if this is a mv64362 */
	if (bip->bridge_type == BRIDGE_TYPE_MV64362) {
		devp = FUNC1(NULL, "marvell,mv64360");
		if (devp == NULL)
			FUNC0("Error: Missing marvell,mv64360"
					" device tree node\n\r");
		FUNC9(devp, "model", "mv64362", FUNC10("mv64362") + 1);
	}

	/* Set User FLASH size */
	devp = FUNC1(NULL, "direct-mapped");
	if (devp == NULL)
		FUNC0("Error: Missing User FLASH device tree node\n\r");
	rc = FUNC4(devp, "reg", v, sizeof(v));
	if (rc != sizeof(v))
		FUNC0("Error: Can't find User FLASH reg property\n\r");
	v[1] = bip->user_flash;
	FUNC9(devp, "reg", v, sizeof(v));
}