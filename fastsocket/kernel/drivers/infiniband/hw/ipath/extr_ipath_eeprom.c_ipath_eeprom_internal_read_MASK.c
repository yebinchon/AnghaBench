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
struct ipath_devdata {int dummy; } ;
struct i2c_chain_desc {scalar_t__ eeprom_dev; } ;

/* Variables and functions */
 scalar_t__ IPATH_NO_DEV ; 
 int READ_CMD ; 
 int /*<<< orphan*/  VERBOSE ; 
 int WRITE_CMD ; 
 int FUNC0 (struct ipath_devdata*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (struct ipath_devdata*,char*) ; 
 struct i2c_chain_desc* FUNC4 (struct ipath_devdata*) ; 
 int /*<<< orphan*/  FUNC5 (struct ipath_devdata*) ; 
 int /*<<< orphan*/  FUNC6 (struct ipath_devdata*) ; 
 int /*<<< orphan*/  FUNC7 (struct ipath_devdata*) ; 
 int FUNC8 (struct ipath_devdata*,int) ; 

__attribute__((used)) static int FUNC9(struct ipath_devdata *dd,
					u8 eeprom_offset, void *buffer, int len)
{
	int ret;
	struct i2c_chain_desc *icd;
	u8 *bp = buffer;

	ret = 1;
	icd = FUNC4(dd);
	if (!icd)
		goto bail;

	if (icd->eeprom_dev == IPATH_NO_DEV) {
		/* legacy not-really-I2C */
		FUNC1(VERBOSE, "Start command only address\n");
		eeprom_offset = (eeprom_offset << 1) | READ_CMD;
		ret = FUNC0(dd, eeprom_offset);
	} else {
		/* Actual I2C */
		FUNC1(VERBOSE, "Start command uses devaddr\n");
		if (FUNC0(dd, icd->eeprom_dev | WRITE_CMD)) {
			FUNC2("Failed EEPROM startcmd\n");
			FUNC7(dd);
			ret = 1;
			goto bail;
		}
		ret = FUNC8(dd, eeprom_offset);
		FUNC7(dd);
		if (ret) {
			FUNC3(dd, "Failed to write EEPROM address\n");
			ret = 1;
			goto bail;
		}
		ret = FUNC0(dd, icd->eeprom_dev | READ_CMD);
	}
	if (ret) {
		FUNC2("Failed startcmd for dev %02X\n", icd->eeprom_dev);
		FUNC7(dd);
		ret = 1;
		goto bail;
	}

	/*
	 * eeprom keeps clocking data out as long as we ack, automatically
	 * incrementing the address.
	 */
	while (len-- > 0) {
		/* get and store data */
		*bp++ = FUNC5(dd);
		/* send ack if not the last byte */
		if (len)
			FUNC6(dd);
	}

	FUNC7(dd);

	ret = 0;

bail:
	return ret;
}