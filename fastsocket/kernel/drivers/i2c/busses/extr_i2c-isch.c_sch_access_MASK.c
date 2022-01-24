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
union i2c_smbus_data {int byte; int word; int* block; } ;
typedef  int u8 ;
typedef  int u16 ;
struct i2c_adapter {int /*<<< orphan*/  dev; } ;
typedef  int s32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int EAGAIN ; 
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int EPROTO ; 
#define  I2C_SMBUS_BLOCK_DATA 136 
 int I2C_SMBUS_BLOCK_MAX ; 
#define  I2C_SMBUS_BYTE 135 
#define  I2C_SMBUS_BYTE_DATA 134 
#define  I2C_SMBUS_QUICK 133 
#define  I2C_SMBUS_WORD_DATA 132 
 char I2C_SMBUS_WRITE ; 
#define  SCH_BLOCK_DATA 131 
#define  SCH_BYTE 130 
#define  SCH_BYTE_DATA 129 
 int SCH_QUICK ; 
#define  SCH_WORD_DATA 128 
 int /*<<< orphan*/  SMBBLKDAT ; 
 char* SMBHSTADD ; 
 char* SMBHSTCMD ; 
 char* SMBHSTCNT ; 
 char* SMBHSTDAT0 ; 
 char* SMBHSTDAT1 ; 
 char* SMBHSTSTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*) ; 
 TYPE_1__ sch_adapter ; 
 int FUNC4 () ; 

__attribute__((used)) static s32 FUNC5(struct i2c_adapter *adap, u16 addr,
		 unsigned short flags, char read_write,
		 u8 command, int size, union i2c_smbus_data *data)
{
	int i, len, temp, rc;

	/* Make sure the SMBus host is not busy */
	temp = FUNC2(SMBHSTSTS) & 0x0f;
	if (temp & 0x08) {
		FUNC0(&sch_adapter.dev, "SMBus busy (%02x)\n", temp);
		return -EAGAIN;
	}
	FUNC0(&sch_adapter.dev, "access size: %d %s\n", size,
		(read_write)?"READ":"WRITE");
	switch (size) {
	case I2C_SMBUS_QUICK:
		FUNC3((addr << 1) | read_write, SMBHSTADD);
		size = SCH_QUICK;
		break;
	case I2C_SMBUS_BYTE:
		FUNC3((addr << 1) | read_write, SMBHSTADD);
		if (read_write == I2C_SMBUS_WRITE)
			FUNC3(command, SMBHSTCMD);
		size = SCH_BYTE;
		break;
	case I2C_SMBUS_BYTE_DATA:
		FUNC3((addr << 1) | read_write, SMBHSTADD);
		FUNC3(command, SMBHSTCMD);
		if (read_write == I2C_SMBUS_WRITE)
			FUNC3(data->byte, SMBHSTDAT0);
		size = SCH_BYTE_DATA;
		break;
	case I2C_SMBUS_WORD_DATA:
		FUNC3((addr << 1) | read_write, SMBHSTADD);
		FUNC3(command, SMBHSTCMD);
		if (read_write == I2C_SMBUS_WRITE) {
			FUNC3(data->word & 0xff, SMBHSTDAT0);
			FUNC3((data->word & 0xff00) >> 8, SMBHSTDAT1);
		}
		size = SCH_WORD_DATA;
		break;
	case I2C_SMBUS_BLOCK_DATA:
		FUNC3((addr << 1) | read_write, SMBHSTADD);
		FUNC3(command, SMBHSTCMD);
		if (read_write == I2C_SMBUS_WRITE) {
			len = data->block[0];
			if (len == 0 || len > I2C_SMBUS_BLOCK_MAX)
				return -EINVAL;
			FUNC3(len, SMBHSTDAT0);
			for (i = 1; i <= len; i++)
				FUNC3(data->block[i], SMBBLKDAT+i-1);
		}
		size = SCH_BLOCK_DATA;
		break;
	default:
		FUNC1(&adap->dev, "Unsupported transaction %d\n", size);
		return -EOPNOTSUPP;
	}
	FUNC0(&sch_adapter.dev, "write size %d to 0x%04x\n", size, SMBHSTCNT);
	FUNC3((FUNC2(SMBHSTCNT) & 0xb0) | (size & 0x7), SMBHSTCNT);

	rc = FUNC4();
	if (rc)	/* Error in transaction */
		return rc;

	if ((read_write == I2C_SMBUS_WRITE) || (size == SCH_QUICK))
		return 0;

	switch (size) {
	case SCH_BYTE:
	case SCH_BYTE_DATA:
		data->byte = FUNC2(SMBHSTDAT0);
		break;
	case SCH_WORD_DATA:
		data->word = FUNC2(SMBHSTDAT0) + (FUNC2(SMBHSTDAT1) << 8);
		break;
	case SCH_BLOCK_DATA:
		data->block[0] = FUNC2(SMBHSTDAT0);
		if (data->block[0] == 0 || data->block[0] > I2C_SMBUS_BLOCK_MAX)
			return -EPROTO;
		for (i = 1; i <= data->block[0]; i++)
			data->block[i] = FUNC2(SMBBLKDAT+i-1);
		break;
	}
	return 0;
}