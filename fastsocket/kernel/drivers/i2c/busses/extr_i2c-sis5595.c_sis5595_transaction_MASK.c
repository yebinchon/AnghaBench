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
 int EBUSY ; 
 int EIO ; 
 int ENXIO ; 
 int ETIMEDOUT ; 
 int MAX_TIMEOUT ; 
 int /*<<< orphan*/  SMB_CTL_LO ; 
 int /*<<< orphan*/  SMB_STS_HI ; 
 int /*<<< orphan*/  SMB_STS_LO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(struct i2c_adapter *adap)
{
	int temp;
	int result = 0;
	int timeout = 0;

	/* Make sure the SMBus host is ready to start transmitting */
	temp = FUNC3(SMB_STS_LO) + (FUNC3(SMB_STS_HI) << 8);
	if (temp != 0x00) {
		FUNC0(&adap->dev, "SMBus busy (%04x). Resetting...\n", temp);
		FUNC4(SMB_STS_LO, temp & 0xff);
		FUNC4(SMB_STS_HI, temp >> 8);
		if ((temp = FUNC3(SMB_STS_LO) + (FUNC3(SMB_STS_HI) << 8)) != 0x00) {
			FUNC0(&adap->dev, "Failed! (%02x)\n", temp);
			return -EBUSY;
		} else {
			FUNC0(&adap->dev, "Successful!\n");
		}
	}

	/* start the transaction by setting bit 4 */
	FUNC4(SMB_CTL_LO, FUNC3(SMB_CTL_LO) | 0x10);

	/* We will always wait for a fraction of a second! */
	do {
		FUNC2(1);
		temp = FUNC3(SMB_STS_LO);
	} while (!(temp & 0x40) && (timeout++ < MAX_TIMEOUT));

	/* If the SMBus is still busy, we give up */
	if (timeout > MAX_TIMEOUT) {
		FUNC0(&adap->dev, "SMBus Timeout!\n");
		result = -ETIMEDOUT;
	}

	if (temp & 0x10) {
		FUNC0(&adap->dev, "Error: Failed bus transaction\n");
		result = -ENXIO;
	}

	if (temp & 0x20) {
		FUNC1(&adap->dev, "Bus collision! SMBus may be locked until "
			"next hard reset (or not...)\n");
		/* Clock stops and slave is stuck in mid-transmission */
		result = -EIO;
	}

	temp = FUNC3(SMB_STS_LO) + (FUNC3(SMB_STS_HI) << 8);
	if (temp != 0x00) {
		FUNC4(SMB_STS_LO, temp & 0xff);
		FUNC4(SMB_STS_HI, temp >> 8);
	}

	temp = FUNC3(SMB_STS_LO) + (FUNC3(SMB_STS_HI) << 8);
	if (temp != 0x00)
		FUNC0(&adap->dev, "Failed reset at end of transaction (%02x)\n", temp);

	return result;
}