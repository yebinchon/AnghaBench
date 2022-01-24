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
struct mpc_i2c {int /*<<< orphan*/  dev; scalar_t__ base; } ;
struct i2c_msg {int flags; int /*<<< orphan*/  len; int /*<<< orphan*/  buf; int /*<<< orphan*/  addr; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int CSR_MBB ; 
 int CSR_MCF ; 
 int CSR_RXAK ; 
 int EINTR ; 
 int EIO ; 
 scalar_t__ HZ ; 
 int I2C_M_RD ; 
 scalar_t__ MPC_I2C_SR ; 
 int /*<<< orphan*/  current ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 struct mpc_i2c* FUNC1 (struct i2c_adapter*) ; 
 unsigned long jiffies ; 
 int /*<<< orphan*/  FUNC2 (struct mpc_i2c*) ; 
 int /*<<< orphan*/  FUNC3 (struct mpc_i2c*) ; 
 int /*<<< orphan*/  FUNC4 (struct mpc_i2c*) ; 
 int FUNC5 (struct mpc_i2c*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC6 (struct mpc_i2c*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (unsigned long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (struct mpc_i2c*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct i2c_adapter *adap, struct i2c_msg *msgs, int num)
{
	struct i2c_msg *pmsg;
	int i;
	int ret = 0;
	unsigned long orig_jiffies = jiffies;
	struct mpc_i2c *i2c = FUNC1(adap);

	FUNC3(i2c);

	/* Allow bus up to 1s to become not busy */
	while (FUNC7(i2c->base + MPC_I2C_SR) & CSR_MBB) {
		if (FUNC9(current)) {
			FUNC0(i2c->dev, "Interrupted\n");
			FUNC11(i2c, 0);
			return -EINTR;
		}
		if (FUNC10(jiffies, orig_jiffies + HZ)) {
			FUNC0(i2c->dev, "timeout\n");
			if (FUNC7(i2c->base + MPC_I2C_SR) ==
			    (CSR_MCF | CSR_MBB | CSR_RXAK))
				FUNC2(i2c);
			return -EIO;
		}
		FUNC8();
	}

	for (i = 0; ret >= 0 && i < num; i++) {
		pmsg = &msgs[i];
		FUNC0(i2c->dev,
			"Doing %s %d bytes to 0x%02x - %d of %d messages\n",
			pmsg->flags & I2C_M_RD ? "read" : "write",
			pmsg->len, pmsg->addr, i + 1, num);
		if (pmsg->flags & I2C_M_RD)
			ret =
			    FUNC5(i2c, pmsg->addr, pmsg->buf, pmsg->len, i);
		else
			ret =
			    FUNC6(i2c, pmsg->addr, pmsg->buf, pmsg->len, i);
	}
	FUNC4(i2c);
	return (ret < 0) ? ret : num;
}