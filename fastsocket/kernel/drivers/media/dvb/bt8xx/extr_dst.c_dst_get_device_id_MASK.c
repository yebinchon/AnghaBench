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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct tuner_types {char* fw_name; int tuner_type; int /*<<< orphan*/  tuner_name; } ;
struct dst_types {size_t offset; char* device_id; int dst_type; int tuner_type; int /*<<< orphan*/  dst_feature; int /*<<< orphan*/  type_flags; } ;
struct dst_state {int tuner_type; int* rxbuffer; int dst_type; int /*<<< orphan*/  type_flags; int /*<<< orphan*/ * fw_name; int /*<<< orphan*/  dst_hw_cap; } ;

/* Variables and functions */
 int ACK ; 
 int FUNC0 (void*) ; 
 int /*<<< orphan*/  DEVICE_INIT ; 
 int /*<<< orphan*/  DST_ERROR ; 
 int /*<<< orphan*/  DST_INFO ; 
 int /*<<< orphan*/  DST_TYPE_HAS_SYMDIV ; 
#define  DST_TYPE_IS_SAT 128 
 int /*<<< orphan*/  FIXED_COMM ; 
 int /*<<< orphan*/  GET_ACK ; 
 int TUNER_TYPE_MB86A15 ; 
 int TUNER_TYPE_MULTI ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,...) ; 
 scalar_t__ FUNC2 (struct dst_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct dst_state*) ; 
 int FUNC4 (int*,int) ; 
 scalar_t__ FUNC5 (struct dst_state*) ; 
 void* dst_tlist ; 
 int /*<<< orphan*/  FUNC6 (struct dst_state*) ; 
 int /*<<< orphan*/  FUNC7 (struct dst_state*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct dst_state*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct dst_state*,int*,int /*<<< orphan*/ ) ; 
 int FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char*,int) ; 
 void* tuner_list ; 
 int /*<<< orphan*/  verbose ; 
 scalar_t__ FUNC13 (struct dst_state*,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC14(struct dst_state *state)
{
	u8 reply;

	int i, j;
	struct dst_types *p_dst_type = NULL;
	struct tuner_types *p_tuner_list = NULL;

	u8 use_dst_type = 0;
	u32 use_type_flags = 0;

	static u8 device_type[8] = {0x00, 0x06, 0x00, 0x00, 0x00, 0x00, 0x00, 0xff};

	state->tuner_type = 0;
	device_type[7] = FUNC4(device_type, 7);

	if (FUNC13(state, device_type, FIXED_COMM))
		return -1;		/*	Write failed		*/
	if ((FUNC5(state)) < 0)
		return -1;
	if (FUNC9(state, &reply, GET_ACK))
		return -1;		/*	Read failure		*/
	if (reply != ACK) {
		FUNC1(verbose, DST_INFO, 1, "Write not Acknowledged! [Reply=0x%02x]", reply);
		return -1;		/*	Unack'd write		*/
	}
	if (!FUNC8(state, DEVICE_INIT))
		return -1;		/*	DST not ready yet	*/
	if (FUNC9(state, state->rxbuffer, FIXED_COMM))
		return -1;

	FUNC5(state);
	if (state->rxbuffer[7] != FUNC4(state->rxbuffer, 7)) {
		FUNC1(verbose, DST_INFO, 1, "Checksum failure!");
		return -1;		/*	Checksum failure	*/
	}
	state->rxbuffer[7] = '\0';

	for (i = 0, p_dst_type = dst_tlist; i < FUNC0(dst_tlist); i++, p_dst_type++) {
		if (!FUNC11 (&state->rxbuffer[p_dst_type->offset], p_dst_type->device_id, FUNC10 (p_dst_type->device_id))) {
			use_type_flags = p_dst_type->type_flags;
			use_dst_type = p_dst_type->dst_type;

			/*	Card capabilities	*/
			state->dst_hw_cap = p_dst_type->dst_feature;
			FUNC1(verbose, DST_ERROR, 1, "Recognise [%s]", p_dst_type->device_id);
			FUNC12(&state->fw_name[0], p_dst_type->device_id, 6);
			/*	Multiple tuners		*/
			if (p_dst_type->tuner_type & TUNER_TYPE_MULTI) {
				switch (use_dst_type) {
				case DST_TYPE_IS_SAT:
					/*	STV0299 check	*/
					if (FUNC3(state) < 0) {
						FUNC1(verbose, DST_ERROR, 1, "Unsupported");
						state->tuner_type = TUNER_TYPE_MB86A15;
					}
					break;
				default:
					break;
				}
				if (FUNC2(state) < 0)
					FUNC1(verbose, DST_ERROR, 1, "Unsupported");
			/*	Single tuner		*/
			} else {
				state->tuner_type = p_dst_type->tuner_type;
			}
			for (j = 0, p_tuner_list = tuner_list; j < FUNC0(tuner_list); j++, p_tuner_list++) {
				if (!(FUNC11(p_dst_type->device_id, p_tuner_list->fw_name, 7)) &&
					p_tuner_list->tuner_type == state->tuner_type) {
					FUNC1(verbose, DST_ERROR, 1, "[%s] has a [%s]",
						p_dst_type->device_id, p_tuner_list->tuner_name);
				}
			}
			break;
		}
	}

	if (i >= FUNC0(dst_tlist)) {
		FUNC1(verbose, DST_ERROR, 1, "Unable to recognize %s or %s", &state->rxbuffer[0], &state->rxbuffer[1]);
		FUNC1(verbose, DST_ERROR, 1, "please email linux-dvb@linuxtv.org with this type in");
		use_dst_type = DST_TYPE_IS_SAT;
		use_type_flags = DST_TYPE_HAS_SYMDIV;
	}
	FUNC7(state, use_dst_type);
	state->type_flags = use_type_flags;
	state->dst_type = use_dst_type;
	FUNC6(state);

	return 0;
}