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
typedef  int u16 ;
struct dib7000m_state {int revision; int reg_offs; } ;

/* Variables and functions */
 int EREMOTEIO ; 
 int FUNC0 (struct dib7000m_state*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static int FUNC2(struct dib7000m_state *state)
{
	u16 value;

	if ((value = FUNC0(state, 896)) != 0x01b3) {
		FUNC1( "wrong Vendor ID (0x%x)",value);
		return -EREMOTEIO;
	}

	state->revision = FUNC0(state, 897);
	if (state->revision != 0x4000 &&
		state->revision != 0x4001 &&
		state->revision != 0x4002 &&
		state->revision != 0x4003) {
		FUNC1( "wrong Device ID (0x%x)",value);
		return -EREMOTEIO;
	}

	/* protect this driver to be used with 7000PC */
	if (state->revision == 0x4000 && FUNC0(state, 769) == 0x4000) {
		FUNC1( "this driver does not work with DiB7000PC");
		return -EREMOTEIO;
	}

	switch (state->revision) {
		case 0x4000: FUNC1( "found DiB7000MA/PA/MB/PB"); break;
		case 0x4001: state->reg_offs = 1; FUNC1( "found DiB7000HC"); break;
		case 0x4002: state->reg_offs = 1; FUNC1( "found DiB7000MC"); break;
		case 0x4003: state->reg_offs = 1; FUNC1( "found DiB9000"); break;
	}

	return 0;
}