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
typedef  scalar_t__ u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct stb0899_state {int /*<<< orphan*/  verbose; } ;

/* Variables and functions */
 int /*<<< orphan*/  CHIP_ID ; 
 int /*<<< orphan*/  CHIP_REL ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,char*) ; 
 int /*<<< orphan*/  DMD_CORE_ID ; 
 int /*<<< orphan*/  DMD_VERSION_ID ; 
 int ENODEV ; 
 int /*<<< orphan*/  FEC_CORE_ID_REG ; 
 int /*<<< orphan*/  FEC_VER_ID_REG ; 
 int /*<<< orphan*/  FE_DEBUG ; 
 int /*<<< orphan*/  FE_ERROR ; 
 int /*<<< orphan*/  STB0899_DEV_ID ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STB0899_S2DEMOD ; 
 int /*<<< orphan*/  STB0899_S2FEC ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (struct stb0899_state*,int /*<<< orphan*/ ) ; 

int FUNC5(struct stb0899_state *state)
{
	u8 chip_id, release;
	u16 id;
	u32 demod_ver = 0, fec_ver = 0;
	char demod_str[5] = { 0 };
	char fec_str[5] = { 0 };

	id = FUNC4(state, STB0899_DEV_ID);
	FUNC3(state->verbose, FE_DEBUG, 1, "ID reg=[0x%02x]", id);
	chip_id = FUNC1(CHIP_ID, id);
	release = FUNC1(CHIP_REL, id);

	FUNC3(state->verbose, FE_ERROR, 1, "Device ID=[%d], Release=[%d]",
		chip_id, release);

	FUNC0(FUNC2(STB0899_S2DEMOD, DMD_CORE_ID), (char *)&demod_str);

	demod_ver = FUNC2(STB0899_S2DEMOD, DMD_VERSION_ID);
	FUNC3(state->verbose, FE_ERROR, 1, "Demodulator Core ID=[%s], Version=[%d]", (char *) &demod_str, demod_ver);
	FUNC0(FUNC2(STB0899_S2FEC, FEC_CORE_ID_REG), (char *)&fec_str);
	fec_ver = FUNC2(STB0899_S2FEC, FEC_VER_ID_REG);
	if (! (chip_id > 0)) {
		FUNC3(state->verbose, FE_ERROR, 1, "couldn't find a STB 0899");

		return -ENODEV;
	}
	FUNC3(state->verbose, FE_ERROR, 1, "FEC Core ID=[%s], Version=[%d]", (char*) &fec_str, fec_ver);

	return 0;
}