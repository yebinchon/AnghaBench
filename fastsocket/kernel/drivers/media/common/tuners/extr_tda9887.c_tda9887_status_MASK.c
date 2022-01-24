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
struct tda9887_priv {int /*<<< orphan*/  i2c_props; } ;
struct dvb_frontend {struct tda9887_priv* analog_demod_priv; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dvb_frontend*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 

__attribute__((used)) static int FUNC4(struct dvb_frontend *fe)
{
	struct tda9887_priv *priv = fe->analog_demod_priv;
	unsigned char buf[1];
	int rc;

	FUNC1(buf,0,sizeof(buf));
	if (1 != (rc = FUNC2(&priv->i2c_props,buf,1)))
		FUNC3("i2c i/o error: rc == %d (should be 1)\n", rc);
	FUNC0(fe, buf);
	return 0;
}