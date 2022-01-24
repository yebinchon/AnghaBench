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
typedef  int u8 ;
struct itd1000_state {void** shadow; struct i2c_adapter* i2c; struct itd1000_config* cfg; } ;
struct itd1000_config {int dummy; } ;
struct i2c_adapter {int dummy; } ;
struct dvb_tuner_ops {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  tuner_ops; } ;
struct dvb_frontend {struct itd1000_state* tuner_priv; TYPE_1__ ops; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 void* FUNC1 (struct itd1000_state*,int) ; 
 int /*<<< orphan*/  itd1000_tuner_ops ; 
 int /*<<< orphan*/  FUNC2 (struct itd1000_state*) ; 
 struct itd1000_state* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (void**,int,int) ; 

struct dvb_frontend *FUNC6(struct dvb_frontend *fe, struct i2c_adapter *i2c, struct itd1000_config *cfg)
{
	struct itd1000_state *state = NULL;
	u8 i = 0;

	state = FUNC3(sizeof(struct itd1000_state), GFP_KERNEL);
	if (state == NULL)
		return NULL;

	state->cfg = cfg;
	state->i2c = i2c;

	i = FUNC1(state, 0);
	if (i != 0) {
		FUNC2(state);
		return NULL;
	}
	FUNC0("successfully identified (ID: %d)", i);

	FUNC5(state->shadow, 0xff, sizeof(state->shadow));
	for (i = 0x65; i < 0x9c; i++)
		state->shadow[i] = FUNC1(state, i);

	FUNC4(&fe->ops.tuner_ops, &itd1000_tuner_ops, sizeof(struct dvb_tuner_ops));

	fe->tuner_priv = state;

	return fe;
}