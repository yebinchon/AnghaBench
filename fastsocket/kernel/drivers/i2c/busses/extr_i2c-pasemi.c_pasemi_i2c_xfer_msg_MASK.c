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
typedef  int u32 ;
struct pasemi_smbus {int dummy; } ;
struct i2c_msg {int flags; int addr; int len; int* buf; } ;
struct i2c_adapter {struct pasemi_smbus* algo_data; } ;

/* Variables and functions */
 int CLK_100K_DIV ; 
 int CTL_CLK_M ; 
 int CTL_MRR ; 
 int CTL_MTR ; 
 int ENODATA ; 
 int I2C_M_RD ; 
 int MRXFIFO_DATA_M ; 
 int MRXFIFO_EMPTY ; 
 int MTXFIFO_READ ; 
 int MTXFIFO_START ; 
 int MTXFIFO_STOP ; 
 int /*<<< orphan*/  REG_CTL ; 
 int FUNC0 (struct pasemi_smbus*) ; 
 int /*<<< orphan*/  FUNC1 (struct pasemi_smbus*,int) ; 
 int FUNC2 (struct pasemi_smbus*) ; 
 int /*<<< orphan*/  FUNC3 (struct pasemi_smbus*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct i2c_adapter *adapter,
			       struct i2c_msg *msg, int stop)
{
	struct pasemi_smbus *smbus = adapter->algo_data;
	int read, i, err;
	u32 rd;

	read = msg->flags & I2C_M_RD ? 1 : 0;

	FUNC1(smbus, MTXFIFO_START | (msg->addr << 1) | read);

	if (read) {
		FUNC1(smbus, msg->len | MTXFIFO_READ |
				 (stop ? MTXFIFO_STOP : 0));

		err = FUNC2(smbus);
		if (err)
			goto reset_out;

		for (i = 0; i < msg->len; i++) {
			rd = FUNC0(smbus);
			if (rd & MRXFIFO_EMPTY) {
				err = -ENODATA;
				goto reset_out;
			}
			msg->buf[i] = rd & MRXFIFO_DATA_M;
		}
	} else {
		for (i = 0; i < msg->len - 1; i++)
			FUNC1(smbus, msg->buf[i]);

		FUNC1(smbus, msg->buf[msg->len-1] |
			  (stop ? MTXFIFO_STOP : 0));
	}

	return 0;

 reset_out:
	FUNC3(smbus, REG_CTL, (CTL_MTR | CTL_MRR |
		  (CLK_100K_DIV & CTL_CLK_M)));
	return err;
}