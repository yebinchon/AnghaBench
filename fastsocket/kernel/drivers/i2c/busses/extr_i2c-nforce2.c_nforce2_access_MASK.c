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
union i2c_smbus_data {unsigned char byte; unsigned char word; int* block; } ;
typedef  int u8 ;
typedef  int u16 ;
struct nforce2_smbus {int dummy; } ;
struct i2c_adapter {int /*<<< orphan*/  dev; struct nforce2_smbus* algo_data; } ;
typedef  int s32 ;

/* Variables and functions */
 int EINVAL ; 
 int EOPNOTSUPP ; 
 int EPROTO ; 
 unsigned short I2C_CLIENT_PEC ; 
#define  I2C_SMBUS_BLOCK_DATA 132 
 int I2C_SMBUS_BLOCK_MAX ; 
#define  I2C_SMBUS_BYTE 131 
#define  I2C_SMBUS_BYTE_DATA 130 
#define  I2C_SMBUS_QUICK 129 
 char I2C_SMBUS_READ ; 
#define  I2C_SMBUS_WORD_DATA 128 
 char I2C_SMBUS_WRITE ; 
 int /*<<< orphan*/  NVIDIA_SMB_ADDR ; 
 int /*<<< orphan*/  NVIDIA_SMB_BCNT ; 
 int /*<<< orphan*/  NVIDIA_SMB_CMD ; 
 int /*<<< orphan*/  NVIDIA_SMB_DATA ; 
 int /*<<< orphan*/  NVIDIA_SMB_PRTCL ; 
 unsigned char NVIDIA_SMB_PRTCL_BLOCK_DATA ; 
 unsigned char NVIDIA_SMB_PRTCL_BYTE ; 
 unsigned char NVIDIA_SMB_PRTCL_BYTE_DATA ; 
 unsigned char NVIDIA_SMB_PRTCL_PEC ; 
 unsigned char NVIDIA_SMB_PRTCL_QUICK ; 
 unsigned char NVIDIA_SMB_PRTCL_READ ; 
 unsigned char NVIDIA_SMB_PRTCL_WORD_DATA ; 
 unsigned char NVIDIA_SMB_PRTCL_WRITE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static s32 FUNC4(struct i2c_adapter * adap, u16 addr,
		unsigned short flags, char read_write,
		u8 command, int size, union i2c_smbus_data * data)
{
	struct nforce2_smbus *smbus = adap->algo_data;
	unsigned char protocol, pec;
	u8 len;
	int i, status;

	protocol = (read_write == I2C_SMBUS_READ) ? NVIDIA_SMB_PRTCL_READ :
		NVIDIA_SMB_PRTCL_WRITE;
	pec = (flags & I2C_CLIENT_PEC) ? NVIDIA_SMB_PRTCL_PEC : 0;

	switch (size) {

		case I2C_SMBUS_QUICK:
			protocol |= NVIDIA_SMB_PRTCL_QUICK;
			read_write = I2C_SMBUS_WRITE;
			break;

		case I2C_SMBUS_BYTE:
			if (read_write == I2C_SMBUS_WRITE)
				FUNC3(command, NVIDIA_SMB_CMD);
			protocol |= NVIDIA_SMB_PRTCL_BYTE;
			break;

		case I2C_SMBUS_BYTE_DATA:
			FUNC3(command, NVIDIA_SMB_CMD);
			if (read_write == I2C_SMBUS_WRITE)
				FUNC3(data->byte, NVIDIA_SMB_DATA);
			protocol |= NVIDIA_SMB_PRTCL_BYTE_DATA;
			break;

		case I2C_SMBUS_WORD_DATA:
			FUNC3(command, NVIDIA_SMB_CMD);
			if (read_write == I2C_SMBUS_WRITE) {
				 FUNC3(data->word, NVIDIA_SMB_DATA);
				 FUNC3(data->word >> 8, NVIDIA_SMB_DATA+1);
			}
			protocol |= NVIDIA_SMB_PRTCL_WORD_DATA | pec;
			break;

		case I2C_SMBUS_BLOCK_DATA:
			FUNC3(command, NVIDIA_SMB_CMD);
			if (read_write == I2C_SMBUS_WRITE) {
				len = data->block[0];
				if ((len == 0) || (len > I2C_SMBUS_BLOCK_MAX)) {
					FUNC0(&adap->dev,
						"Transaction failed "
						"(requested block size: %d)\n",
						len);
					return -EINVAL;
				}
				FUNC3(len, NVIDIA_SMB_BCNT);
				for (i = 0; i < I2C_SMBUS_BLOCK_MAX; i++)
					FUNC3(data->block[i + 1],
					       NVIDIA_SMB_DATA+i);
			}
			protocol |= NVIDIA_SMB_PRTCL_BLOCK_DATA | pec;
			break;

		default:
			FUNC0(&adap->dev, "Unsupported transaction %d\n", size);
			return -EOPNOTSUPP;
	}

	FUNC3((addr & 0x7f) << 1, NVIDIA_SMB_ADDR);
	FUNC3(protocol, NVIDIA_SMB_PRTCL);

	status = FUNC2(adap);
	if (status)
		return status;

	if (read_write == I2C_SMBUS_WRITE)
		return 0;

	switch (size) {

		case I2C_SMBUS_BYTE:
		case I2C_SMBUS_BYTE_DATA:
			data->byte = FUNC1(NVIDIA_SMB_DATA);
			break;

		case I2C_SMBUS_WORD_DATA:
			data->word = FUNC1(NVIDIA_SMB_DATA) | (FUNC1(NVIDIA_SMB_DATA+1) << 8);
			break;

		case I2C_SMBUS_BLOCK_DATA:
			len = FUNC1(NVIDIA_SMB_BCNT);
			if ((len <= 0) || (len > I2C_SMBUS_BLOCK_MAX)) {
				FUNC0(&adap->dev, "Transaction failed "
					"(received block size: 0x%02x)\n",
					len);
				return -EPROTO;
			}
			for (i = 0; i < len; i++)
				data->block[i+1] = FUNC1(NVIDIA_SMB_DATA + i);
			data->block[0] = len;
			break;
	}

	return 0;
}