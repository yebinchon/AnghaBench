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
 int ALI15X3_STS_BUSY ; 
 int ALI15X3_STS_COLL ; 
 int ALI15X3_STS_DEV ; 
 int ALI15X3_STS_DONE ; 
 int ALI15X3_STS_ERR ; 
 int ALI15X3_STS_TERM ; 
 int ALI15X3_T_OUT ; 
 int EBUSY ; 
 int EIO ; 
 int ENXIO ; 
 int ETIMEDOUT ; 
 int MAX_TIMEOUT ; 
 int /*<<< orphan*/  SMBHSTADD ; 
 int /*<<< orphan*/  SMBHSTCMD ; 
 int /*<<< orphan*/  SMBHSTCNT ; 
 int /*<<< orphan*/  SMBHSTDAT0 ; 
 int /*<<< orphan*/  SMBHSTDAT1 ; 
 int /*<<< orphan*/  SMBHSTSTART ; 
 int /*<<< orphan*/  SMBHSTSTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct i2c_adapter *adap)
{
	int temp;
	int result = 0;
	int timeout = 0;

	FUNC0(&adap->dev, "Transaction (pre): STS=%02x, CNT=%02x, CMD=%02x, "
		"ADD=%02x, DAT0=%02x, DAT1=%02x\n", FUNC3(SMBHSTSTS),
		FUNC3(SMBHSTCNT), FUNC3(SMBHSTCMD), FUNC3(SMBHSTADD),
		FUNC3(SMBHSTDAT0), FUNC3(SMBHSTDAT1));

	/* get status */
	temp = FUNC3(SMBHSTSTS);

	/* Make sure the SMBus host is ready to start transmitting */
	/* Check the busy bit first */
	if (temp & ALI15X3_STS_BUSY) {
	/*
	   If the host controller is still busy, it may have timed out in the
	   previous transaction, resulting in a "SMBus Timeout" Dev.
	   I've tried the following to reset a stuck busy bit.
		1. Reset the controller with an ABORT command.
		   (this doesn't seem to clear the controller if an external
		   device is hung)
		2. Reset the controller and the other SMBus devices with a
		   T_OUT command.  (this clears the host busy bit if an
		   external device is hung, but it comes back upon a new access
		   to a device)
		3. Disable and reenable the controller in SMBHSTCFG
	   Worst case, nothing seems to work except power reset.
	*/
	/* Abort - reset the host controller */
	/*
	   Try resetting entire SMB bus, including other devices -
	   This may not work either - it clears the BUSY bit but
	   then the BUSY bit may come back on when you try and use the chip again.
	   If that's the case you are stuck.
	*/
		FUNC2(&adap->dev, "Resetting entire SMB Bus to "
			"clear busy condition (%02x)\n", temp);
		FUNC5(ALI15X3_T_OUT, SMBHSTCNT);
		temp = FUNC3(SMBHSTSTS);
	}

	/* now check the error bits and the busy bit */
	if (temp & (ALI15X3_STS_ERR | ALI15X3_STS_BUSY)) {
		/* do a clear-on-write */
		FUNC5(0xFF, SMBHSTSTS);
		if ((temp = FUNC3(SMBHSTSTS)) &
		    (ALI15X3_STS_ERR | ALI15X3_STS_BUSY)) {
			/* this is probably going to be correctable only by a power reset
			   as one of the bits now appears to be stuck */
			/* This may be a bus or device with electrical problems. */
			FUNC1(&adap->dev, "SMBus reset failed! (0x%02x) - "
				"controller or device on bus is probably hung\n",
				temp);
			return -EBUSY;
		}
	} else {
		/* check and clear done bit */
		if (temp & ALI15X3_STS_DONE) {
			FUNC5(temp, SMBHSTSTS);
		}
	}

	/* start the transaction by writing anything to the start register */
	FUNC5(0xFF, SMBHSTSTART);

	/* We will always wait for a fraction of a second! */
	timeout = 0;
	do {
		FUNC4(1);
		temp = FUNC3(SMBHSTSTS);
	} while ((!(temp & (ALI15X3_STS_ERR | ALI15X3_STS_DONE)))
		 && (timeout++ < MAX_TIMEOUT));

	/* If the SMBus is still busy, we give up */
	if (timeout > MAX_TIMEOUT) {
		result = -ETIMEDOUT;
		FUNC1(&adap->dev, "SMBus Timeout!\n");
	}

	if (temp & ALI15X3_STS_TERM) {
		result = -EIO;
		FUNC0(&adap->dev, "Error: Failed bus transaction\n");
	}

	/*
	  Unfortunately the ALI SMB controller maps "no response" and "bus
	  collision" into a single bit. No reponse is the usual case so don't
	  do a printk.
	  This means that bus collisions go unreported.
	*/
	if (temp & ALI15X3_STS_COLL) {
		result = -ENXIO;
		FUNC0(&adap->dev,
			"Error: no response or bus collision ADD=%02x\n",
			FUNC3(SMBHSTADD));
	}

	/* haven't ever seen this */
	if (temp & ALI15X3_STS_DEV) {
		result = -EIO;
		FUNC1(&adap->dev, "Error: device error\n");
	}
	FUNC0(&adap->dev, "Transaction (post): STS=%02x, CNT=%02x, CMD=%02x, "
		"ADD=%02x, DAT0=%02x, DAT1=%02x\n", FUNC3(SMBHSTSTS),
		FUNC3(SMBHSTCNT), FUNC3(SMBHSTCMD), FUNC3(SMBHSTADD),
		FUNC3(SMBHSTDAT0), FUNC3(SMBHSTDAT1));
	return result;
}