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
typedef  int u32 ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ALI1563_MAX_TIMEOUT ; 
 int EBUSY ; 
 int EIO ; 
 int ENXIO ; 
 int ETIMEDOUT ; 
 int HST_CNTL2_START ; 
 int HST_STS_BAD ; 
 int HST_STS_BUSERR ; 
 int HST_STS_DEVERR ; 
 int HST_STS_DONE ; 
 int HST_STS_FAIL ; 
 int /*<<< orphan*/  SMB_HST_ADD ; 
 int /*<<< orphan*/  SMB_HST_CMD ; 
 int /*<<< orphan*/  SMB_HST_CNTL1 ; 
 int /*<<< orphan*/  SMB_HST_CNTL2 ; 
 int /*<<< orphan*/  SMB_HST_DAT0 ; 
 int /*<<< orphan*/  SMB_HST_DAT1 ; 
 int /*<<< orphan*/  SMB_HST_STS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,int,int,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct i2c_adapter * a)
{
	u32 data;
	int timeout;
	int status = -EIO;

	FUNC0(&a->dev, "Block (pre): STS=%02x, CNTL1=%02x, "
		"CNTL2=%02x, CMD=%02x, ADD=%02x, DAT0=%02x, DAT1=%02x\n",
		FUNC3(SMB_HST_STS), FUNC3(SMB_HST_CNTL1), FUNC3(SMB_HST_CNTL2),
		FUNC3(SMB_HST_CMD), FUNC3(SMB_HST_ADD), FUNC3(SMB_HST_DAT0),
		FUNC3(SMB_HST_DAT1));

	data = FUNC3(SMB_HST_STS);
	if (data & HST_STS_BAD) {
		FUNC2(&a->dev,"ali1563: Trying to reset busy device\n");
		FUNC5(data | HST_STS_BAD,SMB_HST_STS);
		data = FUNC3(SMB_HST_STS);
		if (data & HST_STS_BAD)
			return -EBUSY;
	}

	/* Clear byte-ready bit */
	FUNC5(data | HST_STS_DONE, SMB_HST_STS);

	/* Start transaction and wait for byte-ready bit to be set */
	FUNC5(FUNC3(SMB_HST_CNTL2) | HST_CNTL2_START, SMB_HST_CNTL2);

	timeout = ALI1563_MAX_TIMEOUT;
	do
		FUNC4(1);
	while (!((data = FUNC3(SMB_HST_STS)) & HST_STS_DONE) && --timeout);

	FUNC0(&a->dev, "Block (post): STS=%02x, CNTL1=%02x, "
		"CNTL2=%02x, CMD=%02x, ADD=%02x, DAT0=%02x, DAT1=%02x\n",
		FUNC3(SMB_HST_STS), FUNC3(SMB_HST_CNTL1), FUNC3(SMB_HST_CNTL2),
		FUNC3(SMB_HST_CMD), FUNC3(SMB_HST_ADD), FUNC3(SMB_HST_DAT0),
		FUNC3(SMB_HST_DAT1));

	if (timeout && !(data & HST_STS_BAD))
		return 0;

	if (timeout == 0)
		status = -ETIMEDOUT;

	if (data & HST_STS_DEVERR)
		status = -ENXIO;

	FUNC1(&a->dev, "SMBus Error: %s%s%s%s%s\n",
		timeout ? "" : "Timeout ",
		data & HST_STS_FAIL ? "Transaction Failed " : "",
		data & HST_STS_BUSERR ? "No response or Bus Collision " : "",
		data & HST_STS_DEVERR ? "Device Error " : "",
		!(data & HST_STS_DONE) ? "Transaction Never Finished " : "");
	return status;
}