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
struct stb0899_params {int srate; } ;
struct stb0899_internal {int status; } ;
struct stb0899_state {int /*<<< orphan*/  verbose; struct stb0899_params params; struct stb0899_internal internal; } ;
typedef  enum stb0899_status { ____Placeholder_stb0899_status } stb0899_status ;

/* Variables and functions */
 int DATAOK ; 
 int /*<<< orphan*/  FE_DEBUG ; 
 int /*<<< orphan*/  FRESACS ; 
 int NODATA ; 
 int /*<<< orphan*/  STB0899_DSTATUS2 ; 
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  STB0899_TSTRES ; 
 int /*<<< orphan*/  STB0899_VSTATUS ; 
 int /*<<< orphan*/  VSTATUS_END_LOOPVIT ; 
 int /*<<< orphan*/  VSTATUS_LOCKEDVIT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct stb0899_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct stb0899_state*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static enum stb0899_status FUNC6(struct stb0899_state *state)
{
	struct stb0899_internal *internal = &state->internal;
	struct stb0899_params *params = &state->params;

	int lock = 0, index = 0, dataTime = 500, loop;
	u8 reg;

	internal->status = NODATA;

	/* RESET FEC	*/
	reg = FUNC4(state, STB0899_TSTRES);
	FUNC1(FRESACS, reg, 1);
	FUNC5(state, STB0899_TSTRES, reg);
	FUNC3(1);
	reg = FUNC4(state, STB0899_TSTRES);
	FUNC1(FRESACS, reg, 0);
	FUNC5(state, STB0899_TSTRES, reg);

	if (params->srate <= 2000000)
		dataTime = 2000;
	else if (params->srate <= 5000000)
		dataTime = 1500;
	else if (params->srate <= 15000000)
		dataTime = 1000;
	else
		dataTime = 500;

	FUNC5(state, STB0899_DSTATUS2, 0x00); /* force search loop	*/
	while (1) {
		/* WARNING! VIT LOCKED has to be tested before VIT_END_LOOOP	*/
		reg = FUNC4(state, STB0899_VSTATUS);
		lock = FUNC0(VSTATUS_LOCKEDVIT, reg);
		loop = FUNC0(VSTATUS_END_LOOPVIT, reg);

		if (lock || loop || (index > dataTime))
			break;
		index++;
	}

	if (lock) {	/* DATA LOCK indicator	*/
		internal->status = DATAOK;
		FUNC2(state->verbose, FE_DEBUG, 1, "-----------------> DATA OK !");
	}

	return internal->status;
}