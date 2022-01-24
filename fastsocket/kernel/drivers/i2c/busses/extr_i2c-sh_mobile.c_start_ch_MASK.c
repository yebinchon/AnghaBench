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
struct sh_mobile_i2c_data {int iccl; int icch; int pos; scalar_t__ sr; struct i2c_msg* msg; int /*<<< orphan*/  dev; } ;
struct i2c_msg {scalar_t__ len; int flags; } ;

/* Variables and functions */
 int EIO ; 
 int I2C_M_RD ; 
 int /*<<< orphan*/  FUNC0 (struct sh_mobile_i2c_data*) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_mobile_i2c_data*) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_mobile_i2c_data*) ; 
 int ICCR_ICE ; 
 int /*<<< orphan*/  FUNC3 (struct sh_mobile_i2c_data*) ; 
 int ICIC_ALE ; 
 int ICIC_DTEE ; 
 int ICIC_TACKE ; 
 int ICIC_WAITE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC7(struct sh_mobile_i2c_data *pd, struct i2c_msg *usr_msg)
{
	if (usr_msg->len == 0 && (usr_msg->flags & I2C_M_RD)) {
		FUNC4(pd->dev, "Unsupported zero length i2c read\n");
		return -EIO;
	}

	/* Initialize channel registers */
	FUNC6(FUNC5(FUNC2(pd)) & ~ICCR_ICE, FUNC2(pd));

	/* Enable channel and configure rx ack */
	FUNC6(FUNC5(FUNC2(pd)) | ICCR_ICE, FUNC2(pd));

	/* Set the clock */
	FUNC6(pd->iccl, FUNC1(pd));
	FUNC6(pd->icch, FUNC0(pd));

	pd->msg = usr_msg;
	pd->pos = -1;
	pd->sr = 0;

	/* Enable all interrupts to begin with */
	FUNC6(ICIC_WAITE | ICIC_ALE | ICIC_TACKE | ICIC_DTEE, FUNC3(pd));
	return 0;
}