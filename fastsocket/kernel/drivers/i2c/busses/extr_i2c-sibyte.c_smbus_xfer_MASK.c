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
union i2c_smbus_data {int byte; int word; } ;
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u16 ;
struct i2c_algo_sibyte_data {int dummy; } ;
struct i2c_adapter {struct i2c_algo_sibyte_data* algo_data; } ;

/* Variables and functions */
#define  I2C_SMBUS_BYTE 131 
#define  I2C_SMBUS_BYTE_DATA 130 
#define  I2C_SMBUS_QUICK 129 
 char I2C_SMBUS_READ ; 
#define  I2C_SMBUS_WORD_DATA 128 
 int M_SMB_BUSY ; 
 int M_SMB_ERROR ; 
 int M_SMB_QDATA ; 
 int /*<<< orphan*/  R_SMB_CMD ; 
 int /*<<< orphan*/  R_SMB_DATA ; 
 int /*<<< orphan*/  R_SMB_START ; 
 int /*<<< orphan*/  R_SMB_STATUS ; 
 int /*<<< orphan*/  FUNC0 (struct i2c_algo_sibyte_data*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int V_SMB_TT_CMD_RD1BYTE ; 
 int V_SMB_TT_CMD_RD2BYTE ; 
 int V_SMB_TT_QUICKCMD ; 
 int V_SMB_TT_RD1BYTE ; 
 int V_SMB_TT_WR1BYTE ; 
 int V_SMB_TT_WR2BYTE ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct i2c_adapter *i2c_adap, u16 addr,
		      unsigned short flags, char read_write,
		      u8 command, int size, union i2c_smbus_data * data)
{
	struct i2c_algo_sibyte_data *adap = i2c_adap->algo_data;
	int data_bytes = 0;
	int error;

	while (FUNC5(FUNC0(adap, R_SMB_STATUS)) & M_SMB_BUSY)
		;

	switch (size) {
	case I2C_SMBUS_QUICK:
		FUNC6((FUNC1(addr) |
			   (read_write == I2C_SMBUS_READ ? M_SMB_QDATA : 0) |
			   V_SMB_TT_QUICKCMD), FUNC0(adap, R_SMB_START));
		break;
	case I2C_SMBUS_BYTE:
		if (read_write == I2C_SMBUS_READ) {
			FUNC6((FUNC1(addr) | V_SMB_TT_RD1BYTE),
				  FUNC0(adap, R_SMB_START));
			data_bytes = 1;
		} else {
			FUNC6(FUNC2(command), FUNC0(adap, R_SMB_CMD));
			FUNC6((FUNC1(addr) | V_SMB_TT_WR1BYTE),
				  FUNC0(adap, R_SMB_START));
		}
		break;
	case I2C_SMBUS_BYTE_DATA:
		FUNC6(FUNC2(command), FUNC0(adap, R_SMB_CMD));
		if (read_write == I2C_SMBUS_READ) {
			FUNC6((FUNC1(addr) | V_SMB_TT_CMD_RD1BYTE),
				  FUNC0(adap, R_SMB_START));
			data_bytes = 1;
		} else {
			FUNC6(FUNC3(data->byte),
				  FUNC0(adap, R_SMB_DATA));
			FUNC6((FUNC1(addr) | V_SMB_TT_WR2BYTE),
				  FUNC0(adap, R_SMB_START));
		}
		break;
	case I2C_SMBUS_WORD_DATA:
		FUNC6(FUNC2(command), FUNC0(adap, R_SMB_CMD));
		if (read_write == I2C_SMBUS_READ) {
			FUNC6((FUNC1(addr) | V_SMB_TT_CMD_RD2BYTE),
				  FUNC0(adap, R_SMB_START));
			data_bytes = 2;
		} else {
			FUNC6(FUNC3(data->word & 0xff),
				  FUNC0(adap, R_SMB_DATA));
			FUNC6(FUNC4(data->word >> 8),
				  FUNC0(adap, R_SMB_DATA));
			FUNC6((FUNC1(addr) | V_SMB_TT_WR2BYTE),
				  FUNC0(adap, R_SMB_START));
		}
		break;
	default:
		return -1;      /* XXXKW better error code? */
	}

	while (FUNC5(FUNC0(adap, R_SMB_STATUS)) & M_SMB_BUSY)
		;

	error = FUNC5(FUNC0(adap, R_SMB_STATUS));
	if (error & M_SMB_ERROR) {
		/* Clear error bit by writing a 1 */
		FUNC6(M_SMB_ERROR, FUNC0(adap, R_SMB_STATUS));
		return -1;      /* XXXKW better error code? */
	}

	if (data_bytes == 1)
		data->byte = FUNC5(FUNC0(adap, R_SMB_DATA)) & 0xff;
	if (data_bytes == 2)
		data->word = FUNC5(FUNC0(adap, R_SMB_DATA)) & 0xffff;

	return 0;
}