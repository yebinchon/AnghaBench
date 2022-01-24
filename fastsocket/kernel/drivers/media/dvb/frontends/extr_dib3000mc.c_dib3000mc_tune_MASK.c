#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
struct TYPE_3__ {int /*<<< orphan*/  bandwidth; int /*<<< orphan*/  transmission_mode; scalar_t__ constellation; } ;
struct TYPE_4__ {TYPE_1__ ofdm; } ;
struct dvb_frontend_parameters {TYPE_2__ u; } ;
struct dvb_frontend {struct dib3000mc_state* demodulator_priv; } ;
struct dib3000mc_state {scalar_t__ sfn_workaround_active; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRANSMISSION_MODE_8K ; 
 int FUNC1 (struct dib3000mc_state*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct dib3000mc_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct dib3000mc_state*,struct dvb_frontend_parameters*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct dib3000mc_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (struct dib3000mc_state*,int,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static int FUNC7(struct dvb_frontend *demod, struct dvb_frontend_parameters *ch)
{
	struct dib3000mc_state *state = demod->demodulator_priv;

	// ** configure demod **
	FUNC3(state, ch, 0);

	// activates isi
	if (state->sfn_workaround_active) {
		FUNC6("SFN workaround is active\n");
		FUNC5(state, 29, 0x1273);
		FUNC5(state, 108, 0x4000); // P_pha3_force_pha_shift
	} else {
		FUNC5(state, 29, 0x1073);
		FUNC5(state, 108, 0x0000); // P_pha3_force_pha_shift
	}

	FUNC2(state, (u8)ch->u.ofdm.constellation);
	if (ch->u.ofdm.transmission_mode == TRANSMISSION_MODE_8K) {
		FUNC5(state, 26, 38528);
		FUNC5(state, 33, 8);
	} else {
		FUNC5(state, 26, 30336);
		FUNC5(state, 33, 6);
	}

	if (FUNC1(state, 509) & 0x80)
		FUNC4(state, ch->u.ofdm.transmission_mode, FUNC0(ch->u.ofdm.bandwidth), 1);

	return 0;
}