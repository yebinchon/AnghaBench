#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_9__ {char* name; struct i2c_adapter* adap; int /*<<< orphan*/  addr; } ;
struct microtune_priv {TYPE_4__ i2c_props; } ;
struct i2c_adapter {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  name; } ;
struct TYPE_7__ {TYPE_1__ info; } ;
struct TYPE_8__ {TYPE_2__ tuner_ops; } ;
struct dvb_frontend {TYPE_3__ ops; struct microtune_priv* tuner_priv; } ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 unsigned char FUNC0 (char**) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
#define  MT2032 129 
#define  MT2050 128 
 scalar_t__ debug ; 
 struct microtune_priv* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ ,int) ; 
 char** microtune_part ; 
 int /*<<< orphan*/  FUNC3 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC4 (struct dvb_frontend*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 

struct dvb_frontend *FUNC11(struct dvb_frontend *fe,
				      struct i2c_adapter* i2c_adap,
				      u8 i2c_addr)
{
	struct microtune_priv *priv = NULL;
	char *name;
	unsigned char buf[21];
	int company_code;

	priv = FUNC1(sizeof(struct microtune_priv), GFP_KERNEL);
	if (priv == NULL)
		return NULL;
	fe->tuner_priv = priv;

	priv->i2c_props.addr = i2c_addr;
	priv->i2c_props.adap = i2c_adap;
	priv->i2c_props.name = "mt20xx";

	//priv->radio_if2 = 10700 * 1000;	/* 10.7MHz - FM radio */

	FUNC2(buf,0,sizeof(buf));

	name = "unknown";

	FUNC9(&priv->i2c_props,buf,1);
	FUNC8(&priv->i2c_props,buf,21);
	if (debug) {
		int i;
		FUNC7("MT20xx hexdump:");
		for(i=0;i<21;i++) {
			FUNC5(" %02x",buf[i]);
			if(((i+1)%8)==0) FUNC5(" ");
		}
		FUNC5("\n");
	}
	company_code = buf[0x11] << 8 | buf[0x12];
	FUNC10("microtune: companycode=%04x part=%02x rev=%02x\n",
		   company_code,buf[0x13],buf[0x14]);


	if (buf[0x13] < FUNC0(microtune_part) &&
	    NULL != microtune_part[buf[0x13]])
		name = microtune_part[buf[0x13]];
	switch (buf[0x13]) {
	case MT2032:
		FUNC3(fe);
		break;
	case MT2050:
		FUNC4(fe);
		break;
	default:
		FUNC10("microtune %s found, not (yet?) supported, sorry :-/\n",
			   name);
		return NULL;
	}

	FUNC6(fe->ops.tuner_ops.info.name, name,
		sizeof(fe->ops.tuner_ops.info.name));
	FUNC10("microtune %s found, OK\n",name);
	return fe;
}