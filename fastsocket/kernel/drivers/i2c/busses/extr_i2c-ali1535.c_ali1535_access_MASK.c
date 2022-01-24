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
union i2c_smbus_data {int byte; int word; int* block; } ;
typedef  int u8 ;
typedef  int u16 ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;
typedef  scalar_t__ s32 ;

/* Variables and functions */
 int ALI1535_BLOCK_CLR ; 
#define  ALI1535_BLOCK_DATA 136 
#define  ALI1535_BYTE 135 
#define  ALI1535_BYTE_DATA 134 
 int ALI1535_QUICK ; 
 int ALI1535_STS_IDLE ; 
#define  ALI1535_WORD_DATA 133 
 scalar_t__ EOPNOTSUPP ; 
#define  I2C_SMBUS_BLOCK_DATA 132 
#define  I2C_SMBUS_BYTE 131 
#define  I2C_SMBUS_BYTE_DATA 130 
#define  I2C_SMBUS_QUICK 129 
#define  I2C_SMBUS_WORD_DATA 128 
 char I2C_SMBUS_WRITE ; 
 int MAX_TIMEOUT ; 
 int /*<<< orphan*/  SMBBLKDAT ; 
 int /*<<< orphan*/  SMBHSTADD ; 
 int /*<<< orphan*/  SMBHSTCMD ; 
 int /*<<< orphan*/  SMBHSTDAT0 ; 
 int /*<<< orphan*/  SMBHSTDAT1 ; 
 int /*<<< orphan*/  SMBHSTSTS ; 
 int /*<<< orphan*/  SMBHSTTYP ; 
 scalar_t__ FUNC0 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC6(struct i2c_adapter *adap, u16 addr,
			  unsigned short flags, char read_write, u8 command,
			  int size, union i2c_smbus_data *data)
{
	int i, len;
	int temp;
	int timeout;
	s32 result = 0;

	/* make sure SMBus is idle */
	temp = FUNC3(SMBHSTSTS);
	for (timeout = 0;
	     (timeout < MAX_TIMEOUT) && !(temp & ALI1535_STS_IDLE);
	     timeout++) {
		FUNC4(1);
		temp = FUNC3(SMBHSTSTS);
	}
	if (timeout >= MAX_TIMEOUT)
		FUNC2(&adap->dev, "Idle wait Timeout! STS=0x%02x\n", temp);

	/* clear status register (clear-on-write) */
	FUNC5(0xFF, SMBHSTSTS);

	switch (size) {
	case I2C_SMBUS_QUICK:
		FUNC5(((addr & 0x7f) << 1) | (read_write & 0x01),
		       SMBHSTADD);
		size = ALI1535_QUICK;
		FUNC5(size, SMBHSTTYP);	/* output command */
		break;
	case I2C_SMBUS_BYTE:
		FUNC5(((addr & 0x7f) << 1) | (read_write & 0x01),
		       SMBHSTADD);
		size = ALI1535_BYTE;
		FUNC5(size, SMBHSTTYP);	/* output command */
		if (read_write == I2C_SMBUS_WRITE)
			FUNC5(command, SMBHSTCMD);
		break;
	case I2C_SMBUS_BYTE_DATA:
		FUNC5(((addr & 0x7f) << 1) | (read_write & 0x01),
		       SMBHSTADD);
		size = ALI1535_BYTE_DATA;
		FUNC5(size, SMBHSTTYP);	/* output command */
		FUNC5(command, SMBHSTCMD);
		if (read_write == I2C_SMBUS_WRITE)
			FUNC5(data->byte, SMBHSTDAT0);
		break;
	case I2C_SMBUS_WORD_DATA:
		FUNC5(((addr & 0x7f) << 1) | (read_write & 0x01),
		       SMBHSTADD);
		size = ALI1535_WORD_DATA;
		FUNC5(size, SMBHSTTYP);	/* output command */
		FUNC5(command, SMBHSTCMD);
		if (read_write == I2C_SMBUS_WRITE) {
			FUNC5(data->word & 0xff, SMBHSTDAT0);
			FUNC5((data->word & 0xff00) >> 8, SMBHSTDAT1);
		}
		break;
	case I2C_SMBUS_BLOCK_DATA:
		FUNC5(((addr & 0x7f) << 1) | (read_write & 0x01),
		       SMBHSTADD);
		size = ALI1535_BLOCK_DATA;
		FUNC5(size, SMBHSTTYP);	/* output command */
		FUNC5(command, SMBHSTCMD);
		if (read_write == I2C_SMBUS_WRITE) {
			len = data->block[0];
			if (len < 0) {
				len = 0;
				data->block[0] = len;
			}
			if (len > 32) {
				len = 32;
				data->block[0] = len;
			}
			FUNC5(len, SMBHSTDAT0);
			/* Reset SMBBLKDAT */
			FUNC5(FUNC3(SMBHSTTYP) | ALI1535_BLOCK_CLR, SMBHSTTYP);
			for (i = 1; i <= len; i++)
				FUNC5(data->block[i], SMBBLKDAT);
		}
		break;
	default:
		FUNC2(&adap->dev, "Unsupported transaction %d\n", size);
		result = -EOPNOTSUPP;
		goto EXIT;
	}

	result = FUNC0(adap);
	if (result)
		goto EXIT;

	if ((read_write == I2C_SMBUS_WRITE) || (size == ALI1535_QUICK)) {
		result = 0;
		goto EXIT;
	}

	switch (size) {
	case ALI1535_BYTE:	/* Result put in SMBHSTDAT0 */
		data->byte = FUNC3(SMBHSTDAT0);
		break;
	case ALI1535_BYTE_DATA:
		data->byte = FUNC3(SMBHSTDAT0);
		break;
	case ALI1535_WORD_DATA:
		data->word = FUNC3(SMBHSTDAT0) + (FUNC3(SMBHSTDAT1) << 8);
		break;
	case ALI1535_BLOCK_DATA:
		len = FUNC3(SMBHSTDAT0);
		if (len > 32)
			len = 32;
		data->block[0] = len;
		/* Reset SMBBLKDAT */
		FUNC5(FUNC3(SMBHSTTYP) | ALI1535_BLOCK_CLR, SMBHSTTYP);
		for (i = 1; i <= data->block[0]; i++) {
			data->block[i] = FUNC3(SMBBLKDAT);
			FUNC1(&adap->dev, "Blk: len=%d, i=%d, data=%02x\n",
				len, i, data->block[i]);
		}
		break;
	}
EXIT:
	return result;
}