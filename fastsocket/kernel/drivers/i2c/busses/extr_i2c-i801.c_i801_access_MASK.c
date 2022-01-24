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
union i2c_smbus_data {int byte; int word; } ;
typedef  int u8 ;
typedef  int u16 ;
struct i801_priv {int features; TYPE_1__* pci_dev; } ;
struct i2c_adapter {int dummy; } ;
typedef  int s32 ;
struct TYPE_2__ {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int ENABLE_INT9 ; 
 int EOPNOTSUPP ; 
 int FEATURE_SMBUS_PEC ; 
 unsigned short I2C_CLIENT_PEC ; 
#define  I2C_SMBUS_BLOCK_DATA 136 
#define  I2C_SMBUS_BYTE 135 
#define  I2C_SMBUS_BYTE_DATA 134 
#define  I2C_SMBUS_I2C_BLOCK_DATA 133 
#define  I2C_SMBUS_QUICK 132 
 char I2C_SMBUS_READ ; 
#define  I2C_SMBUS_WORD_DATA 131 
 char I2C_SMBUS_WRITE ; 
#define  I801_BYTE 130 
#define  I801_BYTE_DATA 129 
 int I801_QUICK ; 
#define  I801_WORD_DATA 128 
 int /*<<< orphan*/  FUNC0 (struct i801_priv*) ; 
 int SMBAUXCTL_CRC ; 
 int SMBAUXCTL_E32B ; 
 int /*<<< orphan*/  FUNC1 (struct i801_priv*) ; 
 int /*<<< orphan*/  FUNC2 (struct i801_priv*) ; 
 int /*<<< orphan*/  FUNC3 (struct i801_priv*) ; 
 int /*<<< orphan*/  FUNC4 (struct i801_priv*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 struct i801_priv* FUNC6 (struct i2c_adapter*) ; 
 int FUNC7 (struct i801_priv*,union i2c_smbus_data*,char,int,int) ; 
 int FUNC8 (struct i801_priv*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC11(struct i2c_adapter *adap, u16 addr,
		       unsigned short flags, char read_write, u8 command,
		       int size, union i2c_smbus_data *data)
{
	int hwpec;
	int block = 0;
	int ret, xact = 0;
	struct i801_priv *priv = FUNC6(adap);

	hwpec = (priv->features & FEATURE_SMBUS_PEC) && (flags & I2C_CLIENT_PEC)
		&& size != I2C_SMBUS_QUICK
		&& size != I2C_SMBUS_I2C_BLOCK_DATA;

	switch (size) {
	case I2C_SMBUS_QUICK:
		FUNC10(((addr & 0x7f) << 1) | (read_write & 0x01),
		       FUNC1(priv));
		xact = I801_QUICK;
		break;
	case I2C_SMBUS_BYTE:
		FUNC10(((addr & 0x7f) << 1) | (read_write & 0x01),
		       FUNC1(priv));
		if (read_write == I2C_SMBUS_WRITE)
			FUNC10(command, FUNC2(priv));
		xact = I801_BYTE;
		break;
	case I2C_SMBUS_BYTE_DATA:
		FUNC10(((addr & 0x7f) << 1) | (read_write & 0x01),
		       FUNC1(priv));
		FUNC10(command, FUNC2(priv));
		if (read_write == I2C_SMBUS_WRITE)
			FUNC10(data->byte, FUNC3(priv));
		xact = I801_BYTE_DATA;
		break;
	case I2C_SMBUS_WORD_DATA:
		FUNC10(((addr & 0x7f) << 1) | (read_write & 0x01),
		       FUNC1(priv));
		FUNC10(command, FUNC2(priv));
		if (read_write == I2C_SMBUS_WRITE) {
			FUNC10(data->word & 0xff, FUNC3(priv));
			FUNC10((data->word & 0xff00) >> 8, FUNC4(priv));
		}
		xact = I801_WORD_DATA;
		break;
	case I2C_SMBUS_BLOCK_DATA:
		FUNC10(((addr & 0x7f) << 1) | (read_write & 0x01),
		       FUNC1(priv));
		FUNC10(command, FUNC2(priv));
		block = 1;
		break;
	case I2C_SMBUS_I2C_BLOCK_DATA:
		/* NB: page 240 of ICH5 datasheet shows that the R/#W
		 * bit should be cleared here, even when reading */
		FUNC10((addr & 0x7f) << 1, FUNC1(priv));
		if (read_write == I2C_SMBUS_READ) {
			/* NB: page 240 of ICH5 datasheet also shows
			 * that DATA1 is the cmd field when reading */
			FUNC10(command, FUNC4(priv));
		} else
			FUNC10(command, FUNC2(priv));
		block = 1;
		break;
	default:
		FUNC5(&priv->pci_dev->dev, "Unsupported transaction %d\n",
			size);
		return -EOPNOTSUPP;
	}

	if (hwpec)	/* enable/disable hardware PEC */
		FUNC10(FUNC9(FUNC0(priv)) | SMBAUXCTL_CRC, FUNC0(priv));
	else
		FUNC10(FUNC9(FUNC0(priv)) & (~SMBAUXCTL_CRC),
		       FUNC0(priv));

	if (block)
		ret = FUNC7(priv, data, read_write, size,
					     hwpec);
	else
		ret = FUNC8(priv, xact | ENABLE_INT9);

	/* Some BIOSes don't like it when PEC is enabled at reboot or resume
	   time, so we forcibly disable it after every transaction. Turn off
	   E32B for the same reason. */
	if (hwpec || block)
		FUNC10(FUNC9(FUNC0(priv)) &
		       ~(SMBAUXCTL_CRC | SMBAUXCTL_E32B), FUNC0(priv));

	if (block)
		return ret;
	if (ret)
		return ret;
	if ((read_write == I2C_SMBUS_WRITE) || (xact == I801_QUICK))
		return 0;

	switch (xact & 0x7f) {
	case I801_BYTE:	/* Result put in SMBHSTDAT0 */
	case I801_BYTE_DATA:
		data->byte = FUNC9(FUNC3(priv));
		break;
	case I801_WORD_DATA:
		data->word = FUNC9(FUNC3(priv)) +
			     (FUNC9(FUNC4(priv)) << 8);
		break;
	}
	return 0;
}