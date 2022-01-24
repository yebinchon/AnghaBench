#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ tuner_is_baseband; } ;
struct dib7000p_state {TYPE_1__ cfg; } ;

/* Variables and functions */
 int /*<<< orphan*/  DIB7000P_POWER_ALL ; 
 int /*<<< orphan*/  DIB7000P_POWER_INTERFACE_ONLY ; 
 int /*<<< orphan*/  DIBX000_SLOW_ADC_OFF ; 
 int /*<<< orphan*/  DIBX000_SLOW_ADC_ON ; 
 int /*<<< orphan*/  DIBX000_VBG_ENABLE ; 
 int /*<<< orphan*/  OUTMODE_HIGH_Z ; 
 int /*<<< orphan*/  dib7000p_defaults ; 
 int FUNC0 (struct dib7000p_state*,int) ; 
 scalar_t__ FUNC1 (struct dib7000p_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct dib7000p_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct dib7000p_state*) ; 
 int /*<<< orphan*/  FUNC4 (struct dib7000p_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct dib7000p_state*,int) ; 
 scalar_t__ FUNC6 (struct dib7000p_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct dib7000p_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct dib7000p_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct dib7000p_state*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 

__attribute__((used)) static int FUNC11(struct dib7000p_state *state)
{
	FUNC7(state, DIB7000P_POWER_ALL);

	FUNC4(state, DIBX000_VBG_ENABLE);

	/* restart all parts */
	FUNC9(state,  770, 0xffff);
	FUNC9(state,  771, 0xffff);
	FUNC9(state,  772, 0x001f);
	FUNC9(state,  898, 0x0003);
	/* except i2c, sdio, gpio - control interfaces */
	FUNC9(state, 1280, 0x01fc - ((1 << 7) | (1 << 6) | (1 << 5)) );

	FUNC9(state,  770, 0);
	FUNC9(state,  771, 0);
	FUNC9(state,  772, 0);
	FUNC9(state,  898, 0);
	FUNC9(state, 1280, 0);

	/* default */
	FUNC2(state);

	if (FUNC1(state) != 0)
		FUNC10( "GPIO reset was not successful.");

	if (FUNC6(state, OUTMODE_HIGH_Z) != 0)
		FUNC10( "OUTPUT_MODE could not be reset.");

	/* unforce divstr regardless whether i2c enumeration was done or not */
	FUNC9(state, 1285, FUNC0(state, 1285) & ~(1 << 1) );

	FUNC5(state, 8000);

	FUNC4(state, DIBX000_SLOW_ADC_ON);
	FUNC3(state);
	FUNC4(state, DIBX000_SLOW_ADC_OFF);

	// P_iqc_alpha_pha, P_iqc_alpha_amp_dcc_alpha, ...
	if(state->cfg.tuner_is_baseband)
		FUNC9(state, 36,0x0755);
	else
		FUNC9(state, 36,0x1f55);

	FUNC8(state, dib7000p_defaults);

	FUNC7(state, DIB7000P_POWER_INTERFACE_ONLY);


	return 0;
}