#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
struct nxt200x_state {TYPE_2__* i2c; } ;
struct firmware {int dummy; } ;
struct dvb_frontend {struct nxt200x_state* demodulator_priv; } ;
struct TYPE_3__ {int /*<<< orphan*/  parent; } ;
struct TYPE_4__ {TYPE_1__ dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  NXT2002_DEFAULT_FIRMWARE ; 
 int FUNC0 (struct dvb_frontend*,struct firmware const*) ; 
 int /*<<< orphan*/  FUNC1 (struct nxt200x_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct nxt200x_state*,int,int*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct firmware const*) ; 
 int FUNC5 (struct firmware const**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct dvb_frontend* fe)
{
	struct nxt200x_state* state = fe->demodulator_priv;
	const struct firmware *fw;
	int ret;
	u8 buf[2];

	/* request the firmware, this will block until someone uploads it */
	FUNC3("nxt2002: Waiting for firmware upload (%s)...\n", NXT2002_DEFAULT_FIRMWARE);
	ret = FUNC5(&fw, NXT2002_DEFAULT_FIRMWARE,
			       state->i2c->dev.parent);
	FUNC3("nxt2002: Waiting for firmware upload(2)...\n");
	if (ret) {
		FUNC3("nxt2002: No firmware uploaded (timeout or file not found?)\n");
		return ret;
	}

	ret = FUNC0(fe, fw);
	FUNC4(fw);
	if (ret) {
		FUNC3("nxt2002: Writing firmware to device failed\n");
		return ret;
	}
	FUNC3("nxt2002: Firmware upload complete\n");

	/* Put the micro into reset */
	FUNC1(state);

	/* ensure transfer is complete */
	buf[0]=0x00;
	FUNC2(state, 0x2B, buf, 1);

	/* Put the micro into reset for real this time */
	FUNC1(state);

	/* soft reset everything (agc,frontend,eq,fec)*/
	buf[0] = 0x0F;
	FUNC2(state, 0x08, buf, 1);
	buf[0] = 0x00;
	FUNC2(state, 0x08, buf, 1);

	/* write agc sdm configure */
	buf[0] = 0xF1;
	FUNC2(state, 0x57, buf, 1);

	/* write mod output format */
	buf[0] = 0x20;
	FUNC2(state, 0x09, buf, 1);

	/* write fec mpeg mode */
	buf[0] = 0x7E;
	buf[1] = 0x00;
	FUNC2(state, 0xE9, buf, 2);

	/* write mux selection */
	buf[0] = 0x00;
	FUNC2(state, 0xCC, buf, 1);

	return 0;
}