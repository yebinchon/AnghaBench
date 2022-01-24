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
typedef  int /*<<< orphan*/  u16 ;
struct zd_chip {int dummy; } ;
struct wiphy {int /*<<< orphan*/  fw_version; } ;
struct TYPE_4__ {TYPE_1__* hw; } ;
struct TYPE_3__ {struct wiphy* wiphy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FW_REG_FIRMWARE_VER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct zd_chip*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct zd_chip*) ; 
 TYPE_2__* FUNC4 (struct zd_chip*) ; 
 int FUNC5 (struct zd_chip*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct zd_chip *chip)
{
	struct wiphy *wiphy = FUNC4(chip)->hw->wiphy;
	int r;
	u16 version;

	r = FUNC5(chip, &version,
		FUNC1(chip, FW_REG_FIRMWARE_VER));
	if (r)
		return r;

	FUNC0(FUNC3(chip),"firmware version %04hx\n", version);

	FUNC2(wiphy->fw_version, sizeof(wiphy->fw_version),
			"%04hx", version);

	return 0;
}