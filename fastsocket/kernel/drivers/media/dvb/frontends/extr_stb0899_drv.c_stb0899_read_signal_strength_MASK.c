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
typedef  int /*<<< orphan*/  u32 ;
typedef  int u16 ;
struct stb0899_internal {int /*<<< orphan*/  lock; } ;
struct stb0899_state {int delsys; int /*<<< orphan*/  verbose; struct stb0899_internal internal; } ;
struct dvb_frontend {struct stb0899_state* demodulator_priv; } ;
typedef  int /*<<< orphan*/  s8 ;
typedef  int s32 ;

/* Variables and functions */
 int /*<<< orphan*/  AGCIQVALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FE_DEBUG ; 
 int /*<<< orphan*/  IF_AGC_GAIN ; 
 int /*<<< orphan*/  STB0899_AGCIQIN ; 
 int /*<<< orphan*/  STB0899_DEMOD ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STB0899_VSTATUS ; 
#define  SYS_DSS 130 
#define  SYS_DVBS 129 
#define  SYS_DVBS2 128 
 int /*<<< orphan*/  VSTATUS_LOCKEDVIT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  stb0899_dvbs2rf_tab ; 
 int /*<<< orphan*/  stb0899_dvbsrf_tab ; 
 int /*<<< orphan*/  FUNC4 (struct stb0899_state*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(struct dvb_frontend *fe, u16 *strength)
{
	struct stb0899_state *state		= fe->demodulator_priv;
	struct stb0899_internal *internal	= &state->internal;

	int val;
	u32 reg;
	switch (state->delsys) {
	case SYS_DVBS:
	case SYS_DSS:
		if (internal->lock) {
			reg  = FUNC4(state, STB0899_VSTATUS);
			if (FUNC1(VSTATUS_LOCKEDVIT, reg)) {

				reg = FUNC4(state, STB0899_AGCIQIN);
				val = (s32)(s8)FUNC1(AGCIQVALUE, reg);

				*strength = FUNC5(stb0899_dvbsrf_tab, FUNC0(stb0899_dvbsrf_tab) - 1, val);
				*strength += 750;
				FUNC3(state->verbose, FE_DEBUG, 1, "AGCIQVALUE = 0x%02x, C = %d * 0.1 dBm",
					val & 0xff, *strength);
			}
		}
		break;
	case SYS_DVBS2:
		if (internal->lock) {
			reg = FUNC2(STB0899_DEMOD, IF_AGC_GAIN);
			val = FUNC1(IF_AGC_GAIN, reg);

			*strength = FUNC5(stb0899_dvbs2rf_tab, FUNC0(stb0899_dvbs2rf_tab) - 1, val);
			*strength += 750;
			FUNC3(state->verbose, FE_DEBUG, 1, "IF_AGC_GAIN = 0x%04x, C = %d * 0.1 dBm",
				val & 0x3fff, *strength);
		}
		break;
	default:
		FUNC3(state->verbose, FE_DEBUG, 1, "Unsupported delivery system");
		return -EINVAL;
	}

	return 0;
}