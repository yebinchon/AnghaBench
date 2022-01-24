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
typedef  scalar_t__ u8 ;
struct dvb_frontend {struct af9013_state* demodulator_priv; } ;
struct af9013_state {int dummy; } ;
typedef  int fe_status_t ;

/* Variables and functions */
 int FE_HAS_CARRIER ; 
 int FE_HAS_LOCK ; 
 int FE_HAS_SIGNAL ; 
 int FE_HAS_SYNC ; 
 int FE_HAS_VITERBI ; 
 int FUNC0 (struct af9013_state*,int,int,int,scalar_t__*) ; 
 int FUNC1 (struct dvb_frontend*) ; 

__attribute__((used)) static int FUNC2(struct dvb_frontend *fe, fe_status_t *status)
{
	struct af9013_state *state = fe->demodulator_priv;
	int ret = 0;
	u8 tmp;
	*status = 0;

	/* MPEG2 lock */
	ret = FUNC0(state, 0xd507, 6, 1, &tmp);
	if (ret)
		goto error;
	if (tmp)
		*status |= FE_HAS_SIGNAL | FE_HAS_CARRIER | FE_HAS_VITERBI |
			FE_HAS_SYNC | FE_HAS_LOCK;

	if (!*status) {
		/* TPS lock */
		ret = FUNC0(state, 0xd330, 3, 1, &tmp);
		if (ret)
			goto error;
		if (tmp)
			*status |= FE_HAS_SIGNAL | FE_HAS_CARRIER |
				FE_HAS_VITERBI;
	}

	if (!*status) {
		/* CFO lock */
		ret = FUNC0(state, 0xd333, 7, 1, &tmp);
		if (ret)
			goto error;
		if (tmp)
			*status |= FE_HAS_SIGNAL | FE_HAS_CARRIER;
	}

	if (!*status) {
		/* SFOE lock */
		ret = FUNC0(state, 0xd334, 6, 1, &tmp);
		if (ret)
			goto error;
		if (tmp)
			*status |= FE_HAS_SIGNAL | FE_HAS_CARRIER;
	}

	if (!*status) {
		/* AGC lock */
		ret = FUNC0(state, 0xd1a0, 6, 1, &tmp);
		if (ret)
			goto error;
		if (tmp)
			*status |= FE_HAS_SIGNAL;
	}

	ret = FUNC1(fe);

error:
	return ret;
}