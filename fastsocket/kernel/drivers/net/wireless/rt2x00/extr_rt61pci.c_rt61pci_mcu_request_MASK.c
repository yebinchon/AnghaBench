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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct rt2x00_dev {int /*<<< orphan*/  csr_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  H2M_MAILBOX_CSR ; 
 int /*<<< orphan*/  H2M_MAILBOX_CSR_ARG0 ; 
 int /*<<< orphan*/  H2M_MAILBOX_CSR_ARG1 ; 
 int /*<<< orphan*/  H2M_MAILBOX_CSR_CMD_TOKEN ; 
 int /*<<< orphan*/  H2M_MAILBOX_CSR_OWNER ; 
 int /*<<< orphan*/  HOST_CMD_CSR ; 
 int /*<<< orphan*/  HOST_CMD_CSR_HOST_COMMAND ; 
 int /*<<< orphan*/  HOST_CMD_CSR_INTERRUPT_MCU ; 
 scalar_t__ FUNC0 (struct rt2x00_dev*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC4 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct rt2x00_dev*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(struct rt2x00_dev *rt2x00dev,
				const u8 command, const u8 token,
				const u8 arg0, const u8 arg1)
{
	u32 reg;

	FUNC1(&rt2x00dev->csr_mutex);

	/*
	 * Wait until the MCU becomes available, afterwards we
	 * can safely write the new data into the register.
	 */
	if (FUNC0(rt2x00dev, &reg)) {
		FUNC3(&reg, H2M_MAILBOX_CSR_OWNER, 1);
		FUNC3(&reg, H2M_MAILBOX_CSR_CMD_TOKEN, token);
		FUNC3(&reg, H2M_MAILBOX_CSR_ARG0, arg0);
		FUNC3(&reg, H2M_MAILBOX_CSR_ARG1, arg1);
		FUNC5(rt2x00dev, H2M_MAILBOX_CSR, reg);

		FUNC4(rt2x00dev, HOST_CMD_CSR, &reg);
		FUNC3(&reg, HOST_CMD_CSR_HOST_COMMAND, command);
		FUNC3(&reg, HOST_CMD_CSR_INTERRUPT_MCU, 1);
		FUNC5(rt2x00dev, HOST_CMD_CSR, reg);
	}

	FUNC2(&rt2x00dev->csr_mutex);

}