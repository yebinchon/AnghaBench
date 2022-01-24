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
struct i2c_adapter {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EIO ; 
 int ENXIO ; 
 int ETIMEDOUT ; 
 int GE_ABORT ; 
 int GE_HOST_STC ; 
 int GS_CLEAR_STS ; 
 int GS_COL_STS ; 
 int GS_HCYC_STS ; 
 int GS_HST_STS ; 
 int GS_PRERR_STS ; 
 int GS_SMB_STS ; 
 int GS_TO_STS ; 
 int MAX_TIMEOUT ; 
 int /*<<< orphan*/  SMB_GLOBAL_ENABLE ; 
 int /*<<< orphan*/  SMB_GLOBAL_STATUS ; 
 int /*<<< orphan*/  SMB_HOST_ADDRESS ; 
 int /*<<< orphan*/  SMB_HOST_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct i2c_adapter *adap)
{
	int temp;
	int result = 0;
	int timeout = 0;

	FUNC0(&adap->dev, "Transaction (pre): GS=%04x, GE=%04x, ADD=%04x, "
		"DAT=%04x\n", FUNC4(SMB_GLOBAL_STATUS),
		FUNC4(SMB_GLOBAL_ENABLE), FUNC4(SMB_HOST_ADDRESS),
		FUNC2(SMB_HOST_DATA));

	/* Make sure the SMBus host is ready to start transmitting */
	if ((temp = FUNC4(SMB_GLOBAL_STATUS)) & (GS_HST_STS | GS_SMB_STS)) {
		FUNC0(&adap->dev, "SMBus busy (%04x). Waiting...\n", temp);
		do {
			FUNC5(1);
			temp = FUNC4(SMB_GLOBAL_STATUS);
		} while ((temp & (GS_HST_STS | GS_SMB_STS)) &&
		         (timeout++ < MAX_TIMEOUT));
		/* If the SMBus is still busy, we give up */
		if (timeout > MAX_TIMEOUT) {
			FUNC0(&adap->dev, "Busy wait timeout (%04x)\n", temp);
			goto abort;
		}
		timeout = 0;
	}

	/* start the transaction by setting the start bit */
	FUNC6(FUNC3(SMB_GLOBAL_ENABLE) | GE_HOST_STC, SMB_GLOBAL_ENABLE);

	/* We will always wait for a fraction of a second! */
	do {
		FUNC5(1);
		temp = FUNC4(SMB_GLOBAL_STATUS);
	} while ((temp & GS_HST_STS) && (timeout++ < MAX_TIMEOUT));

	/* If the SMBus is still busy, we give up */
	if (timeout > MAX_TIMEOUT) {
		FUNC0(&adap->dev, "Completion timeout!\n");
		goto abort;
	}

	if (temp & GS_PRERR_STS) {
		result = -ENXIO;
		FUNC0(&adap->dev, "SMBus Protocol error (no response)!\n");
	}

	if (temp & GS_COL_STS) {
		result = -EIO;
		FUNC1(&adap->dev, "SMBus collision!\n");
	}

	if (temp & GS_TO_STS) {
		result = -ETIMEDOUT;
		FUNC0(&adap->dev, "SMBus protocol timeout!\n");
	}

	if (temp & GS_HCYC_STS)
		FUNC0(&adap->dev, "SMBus protocol success!\n");

	FUNC6(GS_CLEAR_STS, SMB_GLOBAL_STATUS);

#ifdef DEBUG
	if (((temp = inw_p(SMB_GLOBAL_STATUS)) & GS_CLEAR_STS) != 0x00) {
		dev_dbg(&adap->dev,
			"Failed reset at end of transaction (%04x)\n", temp);
	}
#endif

	FUNC0(&adap->dev,
		"Transaction (post): GS=%04x, GE=%04x, ADD=%04x, DAT=%04x\n",
		FUNC4(SMB_GLOBAL_STATUS), FUNC4(SMB_GLOBAL_ENABLE),
		FUNC4(SMB_HOST_ADDRESS), FUNC2(SMB_HOST_DATA));

	return result;

 abort:
	FUNC1(&adap->dev, "Sending abort\n");
	FUNC6(FUNC3(SMB_GLOBAL_ENABLE) | GE_ABORT, SMB_GLOBAL_ENABLE);
	FUNC5(100);
	FUNC6(GS_CLEAR_STS, SMB_GLOBAL_STATUS);
	return -EIO;
}