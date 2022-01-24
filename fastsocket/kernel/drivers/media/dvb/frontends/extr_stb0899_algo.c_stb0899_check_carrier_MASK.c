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
typedef  int /*<<< orphan*/  u8 ;
struct stb0899_internal {int status; int /*<<< orphan*/  t_derot; } ;
struct stb0899_state {int /*<<< orphan*/  verbose; struct stb0899_internal internal; } ;
typedef  enum stb0899_status { ____Placeholder_stb0899_status } stb0899_status ;

/* Variables and functions */
 int CARRIEROK ; 
 int /*<<< orphan*/  CARRIER_FOUND ; 
 int /*<<< orphan*/  CFD_ON ; 
 int /*<<< orphan*/  FE_DEBUG ; 
 int NOCARRIER ; 
 int /*<<< orphan*/  STB0899_CFD ; 
 int /*<<< orphan*/  STB0899_DSTATUS ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct stb0899_state*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct stb0899_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static enum stb0899_status FUNC6(struct stb0899_state *state)
{
	struct stb0899_internal *internal = &state->internal;
	u8 reg;

	FUNC3(internal->t_derot); /* wait for derotator ok	*/

	reg = FUNC4(state, STB0899_CFD);
	FUNC1(CFD_ON, reg, 1);
	FUNC5(state, STB0899_CFD, reg);

	reg = FUNC4(state, STB0899_DSTATUS);
	FUNC2(state->verbose, FE_DEBUG, 1, "--------------------> STB0899_DSTATUS=[0x%02x]", reg);
	if (FUNC0(CARRIER_FOUND, reg)) {
		internal->status = CARRIEROK;
		FUNC2(state->verbose, FE_DEBUG, 1, "-------------> CARRIEROK !");
	} else {
		internal->status = NOCARRIER;
		FUNC2(state->verbose, FE_DEBUG, 1, "-------------> NOCARRIER !");
	}

	return internal->status;
}