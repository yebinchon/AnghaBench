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
typedef  int u32 ;
struct stb0899_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DVBS2_RESET ; 
 int /*<<< orphan*/  EQ_ADAPT_MODE ; 
 int /*<<< orphan*/  EQ_CNTRL ; 
 int /*<<< orphan*/  EQ_DELAY ; 
 int /*<<< orphan*/  EQ_DISABLE_UPDATE ; 
 int /*<<< orphan*/  EQ_SHIFT ; 
 int /*<<< orphan*/  STB0899_BASE_ACQUIRE_TRIG ; 
 int /*<<< orphan*/  STB0899_BASE_CRL_FREQ_INIT ; 
 int /*<<< orphan*/  STB0899_BASE_CRL_LOOP_GAIN ; 
 int /*<<< orphan*/  STB0899_BASE_CRL_PHS_INIT ; 
 int /*<<< orphan*/  STB0899_BASE_EQUALIZER_INIT ; 
 int /*<<< orphan*/  STB0899_BASE_EQ_CNTRL ; 
 int /*<<< orphan*/  STB0899_BASE_LOCK_LOST ; 
 int /*<<< orphan*/  STB0899_BASE_RESET_CNTRL ; 
 int /*<<< orphan*/  STB0899_OFF0_ACQUIRE_TRIG ; 
 int /*<<< orphan*/  STB0899_OFF0_CRL_FREQ_INIT ; 
 int /*<<< orphan*/  STB0899_OFF0_CRL_LOOP_GAIN ; 
 int /*<<< orphan*/  STB0899_OFF0_CRL_PHS_INIT ; 
 int /*<<< orphan*/  STB0899_OFF0_EQUALIZER_INIT ; 
 int /*<<< orphan*/  STB0899_OFF0_EQ_CNTRL ; 
 int /*<<< orphan*/  STB0899_OFF0_LOCK_LOST ; 
 int /*<<< orphan*/  STB0899_OFF0_RESET_CNTRL ; 
 int /*<<< orphan*/  STB0899_PDELCTRL ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STB0899_S2DEMOD ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct stb0899_state*) ; 
 int /*<<< orphan*/  FUNC3 (struct stb0899_state*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct stb0899_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC5(struct stb0899_state *state)
{
	u32 reg = 0;

	/* demod soft reset	*/
	FUNC1(DVBS2_RESET, reg, 1);
	FUNC4(state, STB0899_S2DEMOD, STB0899_BASE_RESET_CNTRL, STB0899_OFF0_RESET_CNTRL, reg);

	/*Reset Timing Loop	*/
	FUNC2(state);

	/* reset Carrier loop	*/
	FUNC4(state, STB0899_S2DEMOD, STB0899_BASE_CRL_FREQ_INIT, STB0899_OFF0_CRL_FREQ_INIT, (1 << 30));
	FUNC4(state, STB0899_S2DEMOD, STB0899_BASE_CRL_FREQ_INIT, STB0899_OFF0_CRL_FREQ_INIT, 0);
	FUNC4(state, STB0899_S2DEMOD, STB0899_BASE_CRL_LOOP_GAIN, STB0899_OFF0_CRL_LOOP_GAIN, 0);
	FUNC4(state, STB0899_S2DEMOD, STB0899_BASE_CRL_PHS_INIT, STB0899_OFF0_CRL_PHS_INIT, (1 << 30));
	FUNC4(state, STB0899_S2DEMOD, STB0899_BASE_CRL_PHS_INIT, STB0899_OFF0_CRL_PHS_INIT, 0);

	/*release demod soft reset	*/
	reg = 0;
	FUNC1(DVBS2_RESET, reg, 0);
	FUNC4(state, STB0899_S2DEMOD, STB0899_BASE_RESET_CNTRL, STB0899_OFF0_RESET_CNTRL, reg);

	/* start acquisition process	*/
	FUNC4(state, STB0899_S2DEMOD, STB0899_BASE_ACQUIRE_TRIG, STB0899_OFF0_ACQUIRE_TRIG, 1);
	FUNC4(state, STB0899_S2DEMOD, STB0899_BASE_LOCK_LOST, STB0899_OFF0_LOCK_LOST, 0);

	/* equalizer Init	*/
	FUNC4(state, STB0899_S2DEMOD, STB0899_BASE_EQUALIZER_INIT, STB0899_OFF0_EQUALIZER_INIT, 1);

	/*Start equilizer	*/
	FUNC4(state, STB0899_S2DEMOD, STB0899_BASE_EQUALIZER_INIT, STB0899_OFF0_EQUALIZER_INIT, 0);

	reg = FUNC0(STB0899_S2DEMOD, EQ_CNTRL);
	FUNC1(EQ_SHIFT, reg, 0);
	FUNC1(EQ_DISABLE_UPDATE, reg, 0);
	FUNC1(EQ_DELAY, reg, 0x05);
	FUNC1(EQ_ADAPT_MODE, reg, 0x01);
	FUNC4(state, STB0899_S2DEMOD, STB0899_BASE_EQ_CNTRL, STB0899_OFF0_EQ_CNTRL, reg);

	/* RESET Packet delineator	*/
	FUNC3(state, STB0899_PDELCTRL, 0x4a);
}