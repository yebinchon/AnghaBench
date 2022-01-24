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
struct va1j5jf8007s_state {int tune_state; } ;
struct dvb_frontend_parameters {int dummy; } ;
struct dvb_frontend {struct va1j5jf8007s_state* demodulator_priv; } ;
typedef  int fe_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FE_HAS_CARRIER ; 
 int FE_HAS_LOCK ; 
 int FE_HAS_SIGNAL ; 
 int HZ ; 
#define  VA1J5JF8007S_CHECK_FREQUENCY 137 
#define  VA1J5JF8007S_CHECK_MODULATION 136 
#define  VA1J5JF8007S_CHECK_TS_ID 135 
#define  VA1J5JF8007S_IDLE 134 
#define  VA1J5JF8007S_SET_FREQUENCY_1 133 
#define  VA1J5JF8007S_SET_FREQUENCY_2 132 
#define  VA1J5JF8007S_SET_FREQUENCY_3 131 
#define  VA1J5JF8007S_SET_MODULATION 130 
#define  VA1J5JF8007S_SET_TS_ID 129 
#define  VA1J5JF8007S_TRACK 128 
 int FUNC1 (struct va1j5jf8007s_state*,int*) ; 
 int FUNC2 (struct va1j5jf8007s_state*,int*) ; 
 int FUNC3 (struct va1j5jf8007s_state*,int*) ; 
 int FUNC4 (struct va1j5jf8007s_state*) ; 
 int FUNC5 (struct va1j5jf8007s_state*) ; 
 int FUNC6 (struct va1j5jf8007s_state*) ; 
 int FUNC7 (struct va1j5jf8007s_state*) ; 
 int FUNC8 (struct va1j5jf8007s_state*) ; 

__attribute__((used)) static int
FUNC9(struct dvb_frontend *fe,
		  struct dvb_frontend_parameters *params,
		  unsigned int mode_flags,  unsigned int *delay,
		  fe_status_t *status)
{
	struct va1j5jf8007s_state *state;
	int ret;
	int lock = 0;

	state = fe->demodulator_priv;

	if (params != NULL)
		state->tune_state = VA1J5JF8007S_SET_FREQUENCY_1;

	switch (state->tune_state) {
	case VA1J5JF8007S_IDLE:
		*delay = 3 * HZ;
		*status = 0;
		return 0;

	case VA1J5JF8007S_SET_FREQUENCY_1:
		ret = FUNC4(state);
		if (ret < 0)
			return ret;

		state->tune_state = VA1J5JF8007S_SET_FREQUENCY_2;
		*delay = 0;
		*status = 0;
		return 0;

	case VA1J5JF8007S_SET_FREQUENCY_2:
		ret = FUNC5(state);
		if (ret < 0)
			return ret;

		state->tune_state = VA1J5JF8007S_SET_FREQUENCY_3;
		*delay = (HZ + 99) / 100;
		*status = 0;
		return 0;

	case VA1J5JF8007S_SET_FREQUENCY_3:
		ret = FUNC6(state);
		if (ret < 0)
			return ret;

		state->tune_state = VA1J5JF8007S_CHECK_FREQUENCY;
		*delay = 0;
		*status = 0;
		return 0;

	case VA1J5JF8007S_CHECK_FREQUENCY:
		ret = FUNC1(state, &lock);
		if (ret < 0)
			return ret;

		if (!lock)  {
			*delay = (HZ + 999) / 1000;
			*status = 0;
			return 0;
		}

		state->tune_state = VA1J5JF8007S_SET_MODULATION;
		*delay = 0;
		*status = FE_HAS_SIGNAL;
		return 0;

	case VA1J5JF8007S_SET_MODULATION:
		ret = FUNC7(state);
		if (ret < 0)
			return ret;

		state->tune_state = VA1J5JF8007S_CHECK_MODULATION;
		*delay = 0;
		*status = FE_HAS_SIGNAL;
		return 0;

	case VA1J5JF8007S_CHECK_MODULATION:
		ret = FUNC2(state, &lock);
		if (ret < 0)
			return ret;

		if (!lock)  {
			*delay = (HZ + 49) / 50;
			*status = FE_HAS_SIGNAL;
			return 0;
		}

		state->tune_state = VA1J5JF8007S_SET_TS_ID;
		*delay = 0;
		*status = FE_HAS_SIGNAL | FE_HAS_CARRIER;
		return 0;

	case VA1J5JF8007S_SET_TS_ID:
		ret = FUNC8(state);
		if (ret < 0)
			return ret;

		state->tune_state = VA1J5JF8007S_CHECK_TS_ID;
		return 0;

	case VA1J5JF8007S_CHECK_TS_ID:
		ret = FUNC3(state, &lock);
		if (ret < 0)
			return ret;

		if (!lock)  {
			*delay = (HZ + 99) / 100;
			*status = FE_HAS_SIGNAL | FE_HAS_CARRIER;
			return 0;
		}

		state->tune_state = VA1J5JF8007S_TRACK;
		/* fall through */

	case VA1J5JF8007S_TRACK:
		*delay = 3 * HZ;
		*status = FE_HAS_SIGNAL | FE_HAS_CARRIER | FE_HAS_LOCK;
		return 0;
	}

	FUNC0();
}