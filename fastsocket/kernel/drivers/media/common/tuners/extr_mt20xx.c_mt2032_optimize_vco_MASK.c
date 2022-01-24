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
struct microtune_priv {int /*<<< orphan*/  i2c_props; } ;
struct dvb_frontend {struct microtune_priv* tuner_priv; } ;

/* Variables and functions */
 int FUNC0 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,int) ; 

__attribute__((used)) static int FUNC4(struct dvb_frontend *fe,int sel,int lock)
{
	struct microtune_priv *priv = fe->tuner_priv;
	unsigned char buf[2];
	int tad1;

	buf[0]=0x0f;
	FUNC3(&priv->i2c_props,buf,1);
	FUNC2(&priv->i2c_props,buf,1);
	FUNC1("mt2032 Reg.F=0x%02x\n",buf[0]);
	tad1=buf[0]&0x07;

	if(tad1 ==0) return lock;
	if(tad1 ==1) return lock;

	if(tad1==2) {
		if(sel==0)
			return lock;
		else sel--;
	}
	else {
		if(sel<4)
			sel++;
		else
			return lock;
	}

	FUNC1("mt2032 optimize_vco: sel=%d\n",sel);

	buf[0]=0x0f;
	buf[1]=sel;
	FUNC3(&priv->i2c_props,buf,2);
	lock=FUNC0(fe);
	return lock;
}