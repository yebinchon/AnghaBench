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
union i2c_smbus_data {int* block; } ;
typedef  scalar_t__ u8 ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int HST_CNTL1_LAST ; 
 int HST_CNTL2_BLOCK ; 
 scalar_t__ I2C_SMBUS_WRITE ; 
 int /*<<< orphan*/  SMB_BLK_DAT ; 
 int /*<<< orphan*/  SMB_HST_CNTL1 ; 
 int /*<<< orphan*/  SMB_HST_CNTL2 ; 
 int /*<<< orphan*/  SMB_HST_DAT0 ; 
 int FUNC0 (struct i2c_adapter*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(struct i2c_adapter * a, union i2c_smbus_data * data, u8 rw)
{
	int i, len;
	int error = 0;

	/* Do we need this? */
	FUNC2(HST_CNTL1_LAST,SMB_HST_CNTL1);

	if (rw == I2C_SMBUS_WRITE) {
		len = data->block[0];
		if (len < 1)
			len = 1;
		else if (len > 32)
			len = 32;
		FUNC2(len,SMB_HST_DAT0);
		FUNC2(data->block[1],SMB_BLK_DAT);
	} else
		len = 32;

	FUNC2(FUNC1(SMB_HST_CNTL2) | HST_CNTL2_BLOCK, SMB_HST_CNTL2);

	for (i = 0; i < len; i++) {
		if (rw == I2C_SMBUS_WRITE) {
			FUNC2(data->block[i + 1], SMB_BLK_DAT);
			if ((error = FUNC0(a)))
				break;
		} else {
			if ((error = FUNC0(a)))
				break;
			if (i == 0) {
				len = FUNC1(SMB_HST_DAT0);
				if (len < 1)
					len = 1;
				else if (len > 32)
					len = 32;
			}
			data->block[i+1] = FUNC1(SMB_BLK_DAT);
		}
	}
	/* Do we need this? */
	FUNC2(HST_CNTL1_LAST,SMB_HST_CNTL1);
	return error;
}