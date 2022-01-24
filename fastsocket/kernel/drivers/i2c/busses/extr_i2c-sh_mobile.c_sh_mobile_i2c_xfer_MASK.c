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
typedef  int u_int8_t ;
struct sh_mobile_i2c_data {int sr; int /*<<< orphan*/  dev; int /*<<< orphan*/  wait; } ;
struct i2c_msg {int dummy; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int EIO ; 
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (struct sh_mobile_i2c_data*) ; 
 int ICSR_AL ; 
 int ICSR_BUSY ; 
 int ICSR_TACK ; 
 int /*<<< orphan*/  OP_START ; 
 int SW_DONE ; 
 int /*<<< orphan*/  FUNC1 (struct sh_mobile_i2c_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_mobile_i2c_data*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 struct sh_mobile_i2c_data* FUNC5 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC6 (struct sh_mobile_i2c_data*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (struct sh_mobile_i2c_data*,struct i2c_msg*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int FUNC10 (int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC11(struct i2c_adapter *adapter,
			      struct i2c_msg *msgs,
			      int num)
{
	struct sh_mobile_i2c_data *pd = FUNC5(adapter);
	struct i2c_msg	*msg;
	int err = 0;
	u_int8_t val;
	int i, k, retry_count;

	FUNC1(pd);

	/* Process all messages */
	for (i = 0; i < num; i++) {
		msg = &msgs[i];

		err = FUNC8(pd, msg);
		if (err)
			break;

		FUNC6(pd, OP_START, 0);

		/* The interrupt handler takes care of the rest... */
		k = FUNC10(pd->wait,
				       pd->sr & (ICSR_TACK | SW_DONE),
				       5 * HZ);
		if (!k)
			FUNC4(pd->dev, "Transfer request timed out\n");

		retry_count = 1000;
again:
		val = FUNC7(FUNC0(pd));

		FUNC3(pd->dev, "val 0x%02x pd->sr 0x%02x\n", val, pd->sr);

		/* the interrupt handler may wake us up before the
		 * transfer is finished, so poll the hardware
		 * until we're done.
		 */
		if (val & ICSR_BUSY) {
			FUNC9(10);
			if (retry_count--)
				goto again;

			err = -EIO;
			FUNC4(pd->dev, "Polling timed out\n");
			break;
		}

		/* handle missing acknowledge and arbitration lost */
		if ((val | pd->sr) & (ICSR_TACK | ICSR_AL)) {
			err = -EIO;
			break;
		}
	}

	FUNC2(pd);

	if (!err)
		err = num;
	return err;
}