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
struct i2c_msg {int flags; scalar_t__ len; int /*<<< orphan*/  buf; int /*<<< orphan*/  addr; } ;
struct i2c_au1550_data {scalar_t__ psc_base; } ;
struct i2c_adapter {struct i2c_au1550_data* algo_data; } ;
struct TYPE_2__ {int /*<<< orphan*/  psc_ctrl; } ;
typedef  TYPE_1__ psc_smb_t ;

/* Variables and functions */
 int I2C_M_RD ; 
 int /*<<< orphan*/  PSC_CTRL_ENABLE ; 
 int /*<<< orphan*/  PSC_CTRL_SUSPEND ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (struct i2c_au1550_data*,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (struct i2c_au1550_data*,int /*<<< orphan*/ ,scalar_t__) ; 
 int FUNC3 (struct i2c_au1550_data*,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC4(struct i2c_adapter *i2c_adap, struct i2c_msg *msgs, int num)
{
	struct i2c_au1550_data *adap = i2c_adap->algo_data;
	volatile psc_smb_t *sp = (volatile psc_smb_t *)adap->psc_base;
	struct i2c_msg *p;
	int i, err = 0;

	sp->psc_ctrl = PSC_CTRL_ENABLE;
	FUNC0();

	for (i = 0; !err && i < num; i++) {
		p = &msgs[i];
		err = FUNC1(adap, p->addr, p->flags & I2C_M_RD,
				 (p->len == 0));
		if (err || !p->len)
			continue;
		if (p->flags & I2C_M_RD)
			err = FUNC2(adap, p->buf, p->len);
		else
			err = FUNC3(adap, p->buf, p->len);
	}

	/* Return the number of messages processed, or the error code.
	*/
	if (err == 0)
		err = num;

	sp->psc_ctrl = PSC_CTRL_SUSPEND;
	FUNC0();

	return err;
}