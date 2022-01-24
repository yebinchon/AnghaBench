#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct lgdt3305_state {TYPE_3__* cfg; } ;
struct TYPE_4__ {int modulation; } ;
struct TYPE_5__ {TYPE_1__ vsb; } ;
struct dvb_frontend_parameters {TYPE_2__ u; } ;
struct TYPE_6__ {int demod_chip; } ;

/* Variables and functions */
 int EINVAL ; 
#define  LGDT3304 132 
#define  LGDT3305 131 
 int LGDT3305_AGC_CTRL_1 ; 
 int LGDT3305_AGC_CTRL_4 ; 
#define  QAM_256 130 
#define  QAM_64 129 
#define  VSB_8 128 
 int /*<<< orphan*/  FUNC0 (char*,int,int) ; 
 int FUNC1 (struct lgdt3305_state*,struct dvb_frontend_parameters*) ; 
 int /*<<< orphan*/  FUNC2 (struct lgdt3305_state*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (struct lgdt3305_state*,int,int) ; 

__attribute__((used)) static int FUNC4(struct lgdt3305_state *state,
			      struct dvb_frontend_parameters *param)
{
	int lockdten, acqen;

	switch (param->u.vsb.modulation) {
	case VSB_8:
		lockdten = 0;
		acqen = 0;
		break;
	case QAM_64:
	case QAM_256:
		lockdten = 1;
		acqen = 1;
		break;
	default:
		return -EINVAL;
	}

	FUNC0("lockdten = %d, acqen = %d\n", lockdten, acqen);

	/* control agc function */
	switch (state->cfg->demod_chip) {
	case LGDT3304:
		FUNC3(state, 0x0314, 0xe1 | lockdten << 1);
		FUNC2(state, 0x030e, 2, acqen);
		break;
	case LGDT3305:
		FUNC3(state, LGDT3305_AGC_CTRL_4, 0xe1 | lockdten << 1);
		FUNC2(state, LGDT3305_AGC_CTRL_1, 2, acqen);
		break;
	default:
		return -EINVAL;
	}

	return FUNC1(state, param);
}