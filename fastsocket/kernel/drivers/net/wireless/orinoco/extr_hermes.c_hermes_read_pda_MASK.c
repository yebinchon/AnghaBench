#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct hermes {TYPE_1__* ops; scalar_t__ eeprom_pda; } ;
typedef  int /*<<< orphan*/  __le16 ;
struct TYPE_2__ {int (* cmd_wait ) (struct hermes*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  HERMES_AUXDATA ; 
 int /*<<< orphan*/  HERMES_CMD_READMIF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct hermes*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct hermes*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct hermes*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,...) ; 
 int FUNC6 (struct hermes*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct hermes *hw, __le16 *pda, u32 pda_addr,
			   u16 pda_len)
{
	int ret;
	u16 pda_size;
	u16 data_len = pda_len;
	__le16 *data = pda;

	if (hw->eeprom_pda) {
		/* PDA of spectrum symbol is in eeprom */

		/* Issue command to read EEPROM */
		ret = hw->ops->cmd_wait(hw, HERMES_CMD_READMIF, 0, NULL);
		if (ret)
			return ret;
	} else {
		/* wl_lkm does not include PDA size in the PDA area.
		 * We will pad the information into pda, so other routines
		 * don't have to be modified */
		pda[0] = FUNC0(pda_len - 2);
			/* Includes CFG_PROD_DATA but not itself */
		pda[1] = FUNC0(0x0800); /* CFG_PROD_DATA */
		data_len = pda_len - 4;
		data = pda + 2;
	}

	/* Open auxiliary port */
	ret = FUNC1(hw, 1);
	FUNC5("AUX enable returned %d\n", ret);
	if (ret)
		return ret;

	/* Read PDA */
	FUNC2(hw, pda_addr);
	FUNC3(hw, HERMES_AUXDATA, data, data_len / 2);

	/* Close aux port */
	ret = FUNC1(hw, 0);
	FUNC5("AUX disable returned %d\n", ret);

	/* Check PDA length */
	pda_size = FUNC4(pda[0]);
	FUNC5("Actual PDA length %d, Max allowed %d\n",
		 pda_size, pda_len);
	if (pda_size > pda_len)
		return -EINVAL;

	return 0;
}