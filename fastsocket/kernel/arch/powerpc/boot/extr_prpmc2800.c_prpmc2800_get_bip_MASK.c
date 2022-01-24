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
typedef  int /*<<< orphan*/  vpd ;
typedef  int u8 ;
struct prpmc2800_board_info {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  EEPROM2_ADDR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 () ; 
 int FUNC4 (int /*<<< orphan*/ ,int*,int,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 struct prpmc2800_board_info* FUNC6 (int*) ; 

__attribute__((used)) static struct prpmc2800_board_info *FUNC7(void)
{
	struct prpmc2800_board_info *bip;
	u8 vpd[5];
	int rc;

	if (FUNC3())
		FUNC0("Error: Can't open i2c device\n\r");

	/* Get VPD from i2c eeprom-2 */
	FUNC1(vpd, 0, sizeof(vpd));
	rc = FUNC4(EEPROM2_ADDR, vpd, 0x1fde, 2, sizeof(vpd));
	if (rc < 0)
		FUNC0("Error: Couldn't read eeprom2\n\r");
	FUNC2();

	/* Get board type & related info */
	bip = FUNC6(vpd);
	if (bip == NULL) {
		FUNC5("Error: Unsupported board or corrupted VPD:\n\r");
		FUNC5("  0x%x 0x%x 0x%x 0x%x 0x%x\n\r",
				vpd[0], vpd[1], vpd[2], vpd[3], vpd[4]);
		FUNC5("Using device tree defaults...\n\r");
	}

	return bip;
}