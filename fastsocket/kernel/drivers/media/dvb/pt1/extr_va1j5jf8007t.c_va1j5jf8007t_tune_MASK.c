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
struct va1j5jf8007t_state {int tune_state; } ;
struct dvb_frontend_parameters {int dummy; } ;
struct dvb_frontend {struct va1j5jf8007t_state* demodulator_priv; } ;
typedef  int fe_status_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FE_HAS_CARRIER ; 
 int FE_HAS_LOCK ; 
 int FE_HAS_SIGNAL ; 
 int HZ ; 
#define  VA1J5JF8007T_ABORT 134 
#define  VA1J5JF8007T_CHECK_FREQUENCY 133 
#define  VA1J5JF8007T_CHECK_MODULATION 132 
#define  VA1J5JF8007T_IDLE 131 
#define  VA1J5JF8007T_SET_FREQUENCY 130 
#define  VA1J5JF8007T_SET_MODULATION 129 
#define  VA1J5JF8007T_TRACK 128 
 int FUNC1 (struct va1j5jf8007t_state*,int*) ; 
 int FUNC2 (struct va1j5jf8007t_state*,int*,int*) ; 
 int FUNC3 (struct va1j5jf8007t_state*) ; 
 int FUNC4 (struct va1j5jf8007t_state*) ; 

__attribute__((used)) static int
FUNC5(struct dvb_frontend *fe,
		  struct dvb_frontend_parameters *params,
		  unsigned int mode_flags,  unsigned int *delay,
		  fe_status_t *status)
{
	struct va1j5jf8007t_state *state;
	int ret;
	int lock = 0, retry = 0;

	state = fe->demodulator_priv;

	if (params != NULL)
		state->tune_state = VA1J5JF8007T_SET_FREQUENCY;

	switch (state->tune_state) {
	case VA1J5JF8007T_IDLE:
		*delay = 3 * HZ;
		*status = 0;
		return 0;

	case VA1J5JF8007T_SET_FREQUENCY:
		ret = FUNC3(state);
		if (ret < 0)
			return ret;

		state->tune_state = VA1J5JF8007T_CHECK_FREQUENCY;
		*delay = 0;
		*status = 0;
		return 0;

	case VA1J5JF8007T_CHECK_FREQUENCY:
		ret = FUNC1(state, &lock);
		if (ret < 0)
			return ret;

		if (!lock)  {
			*delay = (HZ + 999) / 1000;
			*status = 0;
			return 0;
		}

		state->tune_state = VA1J5JF8007T_SET_MODULATION;
		*delay = 0;
		*status = FE_HAS_SIGNAL;
		return 0;

	case VA1J5JF8007T_SET_MODULATION:
		ret = FUNC4(state);
		if (ret < 0)
			return ret;

		state->tune_state = VA1J5JF8007T_CHECK_MODULATION;
		*delay = 0;
		*status = FE_HAS_SIGNAL;
		return 0;

	case VA1J5JF8007T_CHECK_MODULATION:
		ret = FUNC2(state, &lock, &retry);
		if (ret < 0)
			return ret;

		if (!lock)  {
			if (!retry)  {
				state->tune_state = VA1J5JF8007T_ABORT;
				*delay = 3 * HZ;
				*status = FE_HAS_SIGNAL;
				return 0;
			}
			*delay = (HZ + 999) / 1000;
			*status = FE_HAS_SIGNAL;
			return 0;
		}

		state->tune_state = VA1J5JF8007T_TRACK;
		/* fall through */

	case VA1J5JF8007T_TRACK:
		*delay = 3 * HZ;
		*status = FE_HAS_SIGNAL | FE_HAS_CARRIER | FE_HAS_LOCK;
		return 0;

	case VA1J5JF8007T_ABORT:
		*delay = 3 * HZ;
		*status = FE_HAS_SIGNAL;
		return 0;
	}

	FUNC0();
}