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
typedef  scalar_t__ u32 ;
struct il_priv {int dummy; } ;
typedef  int /*<<< orphan*/  __le32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int EIO ; 
 int /*<<< orphan*/  HBUS_TARG_MEM_RADDR ; 
 int /*<<< orphan*/  HBUS_TARG_MEM_RDAT ; 
 int /*<<< orphan*/  IL39_RTC_INST_LOWER_BOUND ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC2 (struct il_priv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct il_priv*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct il_priv *il, __le32 * image, u32 len)
{
	u32 val;
	u32 save_len = len;
	int rc = 0;
	u32 errcnt;

	FUNC0("ucode inst image size is %u\n", len);

	FUNC3(il, HBUS_TARG_MEM_RADDR, IL39_RTC_INST_LOWER_BOUND);

	errcnt = 0;
	for (; len > 0; len -= sizeof(u32), image++) {
		/* read data comes through single port, auto-incr addr */
		/* NOTE: Use the debugless read so we don't flood kernel log
		 * if IL_DL_IO is set */
		val = FUNC2(il, HBUS_TARG_MEM_RDAT);
		if (val != FUNC4(*image)) {
			FUNC1("uCode INST section is invalid at "
			       "offset 0x%x, is 0x%x, s/b 0x%x\n",
			       save_len - len, val, FUNC4(*image));
			rc = -EIO;
			errcnt++;
			if (errcnt >= 20)
				break;
		}
	}

	if (!errcnt)
		FUNC0("ucode image in INSTRUCTION memory is good\n");

	return rc;
}