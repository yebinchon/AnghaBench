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
	unsigned char buf[] = { 0x30, 0x00 }; /* clb_stdbt */

	FUNC1(&priv->i2c_props, &buf[0], 1, &buf[1], 1);

	if (enable)
		buf[1] = 0x01;
	else
		buf[1] = 0x03;

	FUNC0(&priv->i2c_props, buf, 2);
}