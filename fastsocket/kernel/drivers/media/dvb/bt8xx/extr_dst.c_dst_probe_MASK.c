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
struct dst_state {int type_flags; int /*<<< orphan*/  dst_mutex; } ;

/* Variables and functions */
 int /*<<< orphan*/  DST_ERROR ; 
 int /*<<< orphan*/  DST_INFO ; 
 int DST_TYPE_HAS_CA ; 
 int DST_TYPE_HAS_FW_BUILD ; 
 int DST_TYPE_HAS_MULTI_FE ; 
 int DST_TYPE_HAS_TS204 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int dst_addons ; 
 scalar_t__ FUNC1 (struct dst_state*) ; 
 scalar_t__ FUNC2 (struct dst_state*) ; 
 scalar_t__ FUNC3 (struct dst_state*) ; 
 scalar_t__ FUNC4 (struct dst_state*) ; 
 scalar_t__ FUNC5 (struct dst_state*) ; 
 scalar_t__ FUNC6 (struct dst_state*) ; 
 scalar_t__ FUNC7 (struct dst_state*) ; 
 int /*<<< orphan*/  FUNC8 (struct dst_state*,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (struct dst_state*) ; 
 int /*<<< orphan*/  verbose ; 

__attribute__((used)) static int FUNC12(struct dst_state *state)
{
	FUNC10(&state->dst_mutex);
	if (dst_addons & DST_TYPE_HAS_CA) {
		if ((FUNC11(state)) < 0) {
			FUNC0(verbose, DST_ERROR, 1, "RDC 8820 RESET Failed.");
			return -1;
		}
		FUNC9(4000);
	} else {
		FUNC9(100);
	}
	if ((FUNC2(state)) < 0) {
		FUNC0(verbose, DST_ERROR, 1, "DST Initialization Failed.");
		return -1;
	}
	FUNC9(100);
	if (FUNC4(state) < 0) {
		FUNC0(verbose, DST_ERROR, 1, "unknown device.");
		return -1;
	}
	if (FUNC5(state) < 0) {
		FUNC0(verbose, DST_INFO, 1, "MAC: Unsupported command");
	}
	if ((state->type_flags & DST_TYPE_HAS_MULTI_FE) || (state->type_flags & DST_TYPE_HAS_FW_BUILD)) {
		if (FUNC6(state) < 0)
			FUNC0(verbose, DST_INFO, 1, "Tuner: Unsupported command");
	}
	if (state->type_flags & DST_TYPE_HAS_TS204) {
		FUNC8(state, 204);
	}
	if (state->type_flags & DST_TYPE_HAS_FW_BUILD) {
		if (FUNC3(state) < 0) {
			FUNC0(verbose, DST_INFO, 1, "FW: Unsupported command");
			return 0;
		}
		if (FUNC1(state) < 0) {
			FUNC0(verbose, DST_INFO, 1, "Card: Unsupported command");
			return 0;
		}
		if (FUNC7(state) < 0) {
			FUNC0(verbose, DST_INFO, 1, "Vendor: Unsupported command");
			return 0;
		}
	}

	return 0;
}