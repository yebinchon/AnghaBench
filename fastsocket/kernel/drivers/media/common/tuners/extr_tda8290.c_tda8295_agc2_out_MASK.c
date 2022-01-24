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
struct tda8290_priv {int /*<<< orphan*/  i2c_props; } ;
struct dvb_frontend {struct tda8290_priv* analog_demod_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,int,unsigned char*,int) ; 

__attribute__((used)) static void FUNC2(struct dvb_frontend *fe, int enable)
{
	struct tda8290_priv *priv = fe->analog_demod_priv;
	unsigned char set_gpio_cf[]    = { 0x44, 0x00 };
	unsigned char set_gpio_val[]   = { 0x46, 0x00 };

	FUNC1(&priv->i2c_props,
				 &set_gpio_cf[0], 1, &set_gpio_cf[1], 1);
	FUNC1(&priv->i2c_props,
				 &set_gpio_val[0], 1, &set_gpio_val[1], 1);

	set_gpio_cf[1] &= 0xf0; /* clear GPIO_0 bits 3-0 */

	if (enable) {
		set_gpio_cf[1]  |= 0x01; /* config GPIO_0 as Open Drain Out */
		set_gpio_val[1] &= 0xfe; /* set GPIO_0 pin low */
	}
	FUNC0(&priv->i2c_props, set_gpio_cf, 2);
	FUNC0(&priv->i2c_props, set_gpio_val, 2);
}