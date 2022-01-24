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
struct dvb_frontend {struct dst_state* demodulator_priv; } ;
struct dst_state {scalar_t__ type_flags; scalar_t__ dst_type; int diseq_flags; int /*<<< orphan*/  dst_mutex; void** tx_tuna; scalar_t__ decode_snr; scalar_t__ decode_strength; scalar_t__ decode_lock; scalar_t__ decode_freq; } ;

/* Variables and functions */
 scalar_t__ ACK ; 
 int ATTEMPT_TUNE ; 
 int /*<<< orphan*/  DST_DEBUG ; 
 int /*<<< orphan*/  DST_INFO ; 
 int DST_TYPE_HAS_VLF ; 
 scalar_t__ DST_TYPE_IS_ATSC ; 
 scalar_t__ DST_TYPE_IS_SAT ; 
 int EIO ; 
 int FIXED_COMM ; 
 int /*<<< orphan*/  GET_ACK ; 
 int HAS_LOCK ; 
 int HAS_POWER ; 
 int /*<<< orphan*/  SEC_VOLTAGE_13 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,...) ; 
 void* FUNC1 (void**,int) ; 
 scalar_t__ FUNC2 (struct dst_state*) ; 
 int FUNC3 (struct dst_state*) ; 
 scalar_t__ FUNC4 (struct dst_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct dvb_frontend*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (struct dst_state*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  verbose ; 
 int FUNC9 (struct dst_state*,void**,int) ; 

__attribute__((used)) static int FUNC10(struct dvb_frontend *fe)
{
	struct dst_state *state = fe->demodulator_priv;
	int retval;
	u8 reply;

	FUNC0(verbose, DST_INFO, 1, "type_flags 0x%x ", state->type_flags);
	state->decode_freq = 0;
	state->decode_lock = state->decode_strength = state->decode_snr = 0;
	if (state->dst_type == DST_TYPE_IS_SAT) {
		if (!(state->diseq_flags & HAS_POWER))
			FUNC5(fe, SEC_VOLTAGE_13);
	}
	state->diseq_flags &= ~(HAS_LOCK | ATTEMPT_TUNE);
	FUNC6(&state->dst_mutex);
	if ((FUNC2(state)) < 0) {
		FUNC0(verbose, DST_DEBUG, 1, "DST Communication initialization failed.");
		goto error;
	}
//	if (state->type_flags & DST_TYPE_HAS_NEWTUNE) {
	if ((state->type_flags & DST_TYPE_HAS_VLF) &&
		(!(state->dst_type == DST_TYPE_IS_ATSC))) {

		state->tx_tuna[9] = FUNC1(&state->tx_tuna[0], 9);
		retval = FUNC9(state, &state->tx_tuna[0], 10);
	} else {
		state->tx_tuna[9] = FUNC1(&state->tx_tuna[2], 7);
		retval = FUNC9(state, &state->tx_tuna[2], FIXED_COMM);
	}
	if (retval < 0) {
		FUNC4(state);
		FUNC0(verbose, DST_DEBUG, 1, "write not successful");
		goto werr;
	}
	if ((FUNC4(state)) < 0) {
		FUNC0(verbose, DST_DEBUG, 1, "DST PIO disable failed !");
		goto error;
	}
	if ((FUNC8(state, &reply, GET_ACK) < 0)) {
		FUNC0(verbose, DST_DEBUG, 1, "read verify not successful.");
		goto error;
	}
	if (reply != ACK) {
		FUNC0(verbose, DST_DEBUG, 1, "write not acknowledged 0x%02x ", reply);
		goto error;
	}
	state->diseq_flags |= ATTEMPT_TUNE;
	retval = FUNC3(state);
werr:
	FUNC7(&state->dst_mutex);
	return retval;

error:
	FUNC7(&state->dst_mutex);
	return -EIO;
}