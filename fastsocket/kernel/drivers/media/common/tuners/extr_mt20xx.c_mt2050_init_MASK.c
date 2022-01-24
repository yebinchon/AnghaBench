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
struct microtune_priv {int /*<<< orphan*/  i2c_props; } ;
struct dvb_tuner_ops {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tuner_ops; } ;
struct dvb_frontend {TYPE_1__ ops; struct microtune_priv* tuner_priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  mt2050_tuner_ops ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *,unsigned char*,int) ; 

__attribute__((used)) static int FUNC4(struct dvb_frontend *fe)
{
	struct microtune_priv *priv = fe->tuner_priv;
	unsigned char buf[2];
	int ret;

	buf[0]=6;
	buf[1]=0x10;
	ret=FUNC3(&priv->i2c_props,buf,2); //  power

	buf[0]=0x0f;
	buf[1]=0x0f;
	ret=FUNC3(&priv->i2c_props,buf,2); // m1lo

	buf[0]=0x0d;
	ret=FUNC3(&priv->i2c_props,buf,1);
	FUNC2(&priv->i2c_props,buf,1);

	FUNC1("mt2050: sro is %x\n",buf[0]);

	FUNC0(&fe->ops.tuner_ops, &mt2050_tuner_ops, sizeof(struct dvb_tuner_ops));

	return 0;
}