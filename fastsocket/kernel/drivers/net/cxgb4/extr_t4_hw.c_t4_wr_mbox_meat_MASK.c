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
typedef  int /*<<< orphan*/  u8 ;
typedef  int u64 ;
typedef  int u32 ;
struct adapter {int /*<<< orphan*/  pdev_dev; TYPE_1__* pdev; } ;
typedef  int /*<<< orphan*/  __be64 ;
struct TYPE_2__ {scalar_t__ error_state; } ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  CIM_PF_MAILBOX_CTRL ; 
 int /*<<< orphan*/  CIM_PF_MAILBOX_DATA ; 
 int EBUSY ; 
 int EINVAL ; 
 int EIO ; 
 int ETIMEDOUT ; 
 int FW_CMD_MAX_TIMEOUT ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 scalar_t__ FW_DEBUG_CMD ; 
 int MBMSGVALID ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int) ; 
 int MBOX_LEN ; 
 int MBOX_OWNER_DRV ; 
 int /*<<< orphan*/  MBOX_OWNER_FW ; 
 int MBOX_OWNER_NONE ; 
 int FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const,int) ; 
 int /*<<< orphan*/  FUNC9 (struct adapter*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct adapter*,void*,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 
 scalar_t__ pci_channel_io_normal ; 
 int FUNC14 (struct adapter*,int) ; 
 int FUNC15 (struct adapter*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct adapter*,int,int) ; 
 int /*<<< orphan*/  FUNC17 (struct adapter*,int,int /*<<< orphan*/ ) ; 

int FUNC18(struct adapter *adap, int mbox, const void *cmd, int size,
		    void *rpl, bool sleep_ok)
{
	static const int delay[] = {
		1, 1, 3, 5, 10, 10, 20, 50, 100, 200
	};

	u32 v;
	u64 res;
	int i, ms, delay_idx;
	const __be64 *p = cmd;
	u32 data_reg = FUNC6(mbox, CIM_PF_MAILBOX_DATA);
	u32 ctl_reg = FUNC6(mbox, CIM_PF_MAILBOX_CTRL);

	if ((size & 15) || size > MBOX_LEN)
		return -EINVAL;

	/*
	 * If the device is off-line, as in EEH, commands will time out.
	 * Fail them early so we don't waste time waiting.
	 */
	if (adap->pdev->error_state != pci_channel_io_normal)
		return -EIO;

	v = FUNC5(FUNC14(adap, ctl_reg));
	for (i = 0; v == MBOX_OWNER_NONE && i < 3; i++)
		v = FUNC5(FUNC14(adap, ctl_reg));

	if (v != MBOX_OWNER_DRV)
		return v ? -EBUSY : -ETIMEDOUT;

	for (i = 0; i < size; i += 8)
		FUNC17(adap, data_reg + i, FUNC7(*p++));

	FUNC16(adap, ctl_reg, MBMSGVALID | FUNC4(MBOX_OWNER_FW));
	FUNC14(adap, ctl_reg);          /* flush write */

	delay_idx = 0;
	ms = delay[0];

	for (i = 0; i < FW_CMD_MAX_TIMEOUT; i += ms) {
		if (sleep_ok) {
			ms = delay[delay_idx];  /* last element may repeat */
			if (delay_idx < FUNC0(delay) - 1)
				delay_idx++;
			FUNC13(ms);
		} else
			FUNC12(ms);

		v = FUNC14(adap, ctl_reg);
		if (FUNC5(v) == MBOX_OWNER_DRV) {
			if (!(v & MBMSGVALID)) {
				FUNC16(adap, ctl_reg, 0);
				continue;
			}

			res = FUNC15(adap, data_reg);
			if (FUNC1(res >> 32) == FW_DEBUG_CMD) {
				FUNC10(adap, data_reg);
				res = FUNC2(EIO);
			} else if (rpl)
				FUNC11(adap, rpl, size / 8, data_reg);

			if (FUNC3((int)res))
				FUNC9(adap, mbox, data_reg);
			FUNC16(adap, ctl_reg, 0);
			return -FUNC3((int)res);
		}
	}

	FUNC9(adap, mbox, data_reg);
	FUNC8(adap->pdev_dev, "command %#x in mailbox %d timed out\n",
		*(const u8 *)cmd, mbox);
	return -ETIMEDOUT;
}