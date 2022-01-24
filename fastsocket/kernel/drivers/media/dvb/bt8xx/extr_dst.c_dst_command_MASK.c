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
struct dst_state {int type_flags; scalar_t__* rxbuffer; int /*<<< orphan*/  dst_mutex; } ;

/* Variables and functions */
 scalar_t__ ACK ; 
 int /*<<< orphan*/  DST_DEBUG ; 
 int /*<<< orphan*/  DST_ERROR ; 
 int /*<<< orphan*/  DST_INFO ; 
 int /*<<< orphan*/  DST_NOTICE ; 
 int DST_TYPE_HAS_FW_1 ; 
 int EIO ; 
 int /*<<< orphan*/  FIXED_COMM ; 
 int /*<<< orphan*/  GET_ACK ; 
 int /*<<< orphan*/  NO_DELAY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,...) ; 
 scalar_t__ FUNC1 (scalar_t__*,int) ; 
 scalar_t__ FUNC2 (struct dst_state*) ; 
 scalar_t__ FUNC3 (struct dst_state*) ; 
 scalar_t__ FUNC4 (struct dst_state*) ; 
 int /*<<< orphan*/  FUNC5 (struct dst_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (struct dst_state*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  verbose ; 
 scalar_t__ FUNC11 (struct dst_state*,scalar_t__*,scalar_t__) ; 

__attribute__((used)) static int FUNC12(struct dst_state *state, u8 *data, u8 len)
{
	u8 reply;

	FUNC7(&state->dst_mutex);
	if ((FUNC2(state)) < 0) {
		FUNC0(verbose, DST_NOTICE, 1, "DST Communication Initialization Failed.");
		goto error;
	}
	if (FUNC11(state, data, len)) {
		FUNC0(verbose, DST_INFO, 1, "Trying to recover.. ");
		if ((FUNC3(state)) < 0) {
			FUNC0(verbose, DST_ERROR, 1, "Recovery Failed.");
			goto error;
		}
		goto error;
	}
	if ((FUNC4(state)) < 0) {
		FUNC0(verbose, DST_ERROR, 1, "PIO Disable Failed.");
		goto error;
	}
	if (state->type_flags & DST_TYPE_HAS_FW_1)
		FUNC6(3);
	if (FUNC9(state, &reply, GET_ACK)) {
		FUNC0(verbose, DST_DEBUG, 1, "Trying to recover.. ");
		if ((FUNC3(state)) < 0) {
			FUNC0(verbose, DST_INFO, 1, "Recovery Failed.");
			goto error;
		}
		goto error;
	}
	if (reply != ACK) {
		FUNC0(verbose, DST_INFO, 1, "write not acknowledged 0x%02x ", reply);
		goto error;
	}
	if (len >= 2 && data[0] == 0 && (data[1] == 1 || data[1] == 3))
		goto error;
	if (state->type_flags & DST_TYPE_HAS_FW_1)
		FUNC6(3);
	else
		FUNC10(2000);
	if (!FUNC5(state, NO_DELAY))
		goto error;
	if (FUNC9(state, state->rxbuffer, FIXED_COMM)) {
		FUNC0(verbose, DST_DEBUG, 1, "Trying to recover.. ");
		if ((FUNC3(state)) < 0) {
			FUNC0(verbose, DST_INFO, 1, "Recovery failed.");
			goto error;
		}
		goto error;
	}
	if (state->rxbuffer[7] != FUNC1(state->rxbuffer, 7)) {
		FUNC0(verbose, DST_INFO, 1, "checksum failure");
		goto error;
	}
	FUNC8(&state->dst_mutex);
	return 0;

error:
	FUNC8(&state->dst_mutex);
	return -EIO;

}