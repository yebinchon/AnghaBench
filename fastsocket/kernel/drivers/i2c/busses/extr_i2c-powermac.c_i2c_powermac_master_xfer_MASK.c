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
struct pmac_i2c_bus {int dummy; } ;
struct i2c_msg {int flags; int addr; int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct i2c_adapter {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 int I2C_M_RD ; 
 int I2C_M_REV_DIR_ADDR ; 
 int I2C_M_TEN ; 
 struct pmac_i2c_bus* FUNC0 (struct i2c_adapter*) ; 
 int /*<<< orphan*/  FUNC1 (struct pmac_i2c_bus*) ; 
 int /*<<< orphan*/  pmac_i2c_mode_std ; 
 int FUNC2 (struct pmac_i2c_bus*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct pmac_i2c_bus*,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct pmac_i2c_bus*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(	struct i2c_adapter *adap,
					struct i2c_msg *msgs,
					int num)
{
	struct pmac_i2c_bus	*bus = FUNC0(adap);
	int			rc = 0;
	int			read;
	int			addrdir;

	if (msgs->flags & I2C_M_TEN)
		return -EINVAL;
	read = (msgs->flags & I2C_M_RD) != 0;
	addrdir = (msgs->addr << 1) | read;
	if (msgs->flags & I2C_M_REV_DIR_ADDR)
		addrdir ^= 1;

	rc = FUNC2(bus, 0);
	if (rc)
		return rc;
	rc = FUNC3(bus, pmac_i2c_mode_std);
	if (rc)
		goto bail;
	rc = FUNC4(bus, addrdir, 0, 0, msgs->buf, msgs->len);
 bail:
	FUNC1(bus);
	return rc < 0 ? rc : 1;
}