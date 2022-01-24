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
struct sp887x_state {int initialised; TYPE_1__* config; } ;
struct firmware {int dummy; } ;
struct dvb_frontend {struct sp887x_state* demodulator_priv; } ;
struct TYPE_2__ {int (* request_firmware ) (struct dvb_frontend*,struct firmware const**,int /*<<< orphan*/ ) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  SP887X_DEFAULT_FIRMWARE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct firmware const*) ; 
 int FUNC2 (struct dvb_frontend*,struct firmware const*) ; 
 int /*<<< orphan*/  FUNC3 (struct sp887x_state*,int,int) ; 
 int FUNC4 (struct dvb_frontend*,struct firmware const**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct dvb_frontend* fe)
{
	struct sp887x_state* state = fe->demodulator_priv;
	const struct firmware *fw = NULL;
	int ret;

	if (!state->initialised) {
		/* request the firmware, this will block until someone uploads it */
		FUNC0("sp887x: waiting for firmware upload (%s)...\n", SP887X_DEFAULT_FIRMWARE);
		ret = state->config->request_firmware(fe, &fw, SP887X_DEFAULT_FIRMWARE);
		if (ret) {
			FUNC0("sp887x: no firmware upload (timeout or file not found?)\n");
			return ret;
		}

		ret = FUNC2(fe, fw);
		FUNC1(fw);
		if (ret) {
			FUNC0("sp887x: writing firmware to device failed\n");
			return ret;
		}
		FUNC0("sp887x: firmware upload complete\n");
		state->initialised = 1;
	}

	/* enable TS output and interface pins */
	FUNC3(state, 0xc18, 0x00d);

	return 0;
}