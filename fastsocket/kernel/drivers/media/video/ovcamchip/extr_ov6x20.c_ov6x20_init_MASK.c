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
struct ovcamchip {struct ov6x20* spriv; } ;
struct ov6x20 {int auto_brt; int auto_exp; } ;
struct i2c_client {int /*<<< orphan*/  dev; TYPE_1__* adapter; } ;
struct TYPE_2__ {int id; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *,char*) ; 
 int ENODEV ; 
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  I2C_HW_SMBUS_OV511 129 
#define  I2C_HW_SMBUS_OV518 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 struct ovcamchip* FUNC2 (struct i2c_client*) ; 
 struct ov6x20* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct i2c_client*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  regvals_init_6x20_511 ; 
 int /*<<< orphan*/  regvals_init_6x20_518 ; 

__attribute__((used)) static int FUNC5(struct i2c_client *c)
{
	struct ovcamchip *ov = FUNC2(c);
	struct ov6x20 *s;
	int rc;

	FUNC0(4, &c->dev, "entered");

	switch (c->adapter->id) {
	case I2C_HW_SMBUS_OV511:
		rc = FUNC4(c, regvals_init_6x20_511);
		break;
	case I2C_HW_SMBUS_OV518:
		rc = FUNC4(c, regvals_init_6x20_518);
		break;
	default:
		FUNC1(&c->dev, "ov6x20: Unsupported adapter\n");
		rc = -ENODEV;
	}

	if (rc < 0)
		return rc;

	ov->spriv = s = FUNC3(sizeof *s, GFP_KERNEL);
	if (!s)
		return -ENOMEM;

	s->auto_brt = 1;
	s->auto_exp = 1;

	return rc;
}