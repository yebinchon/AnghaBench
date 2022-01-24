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
struct psmouse {int /*<<< orphan*/  ps2dev; } ;

/* Variables and functions */
 int PSMOUSE_ALPS ; 
 int /*<<< orphan*/  PSMOUSE_CMD_RESET_DIS ; 
 int PSMOUSE_ELANTECH ; 
 int PSMOUSE_FSP ; 
 int PSMOUSE_GENPS ; 
 int PSMOUSE_HGPK ; 
 unsigned int PSMOUSE_IMEX ; 
 unsigned int PSMOUSE_IMPS ; 
 int PSMOUSE_LIFEBOOK ; 
 unsigned int PSMOUSE_PS2 ; 
 int PSMOUSE_PS2PP ; 
 int PSMOUSE_SYNAPTICS ; 
 int PSMOUSE_THINKPS ; 
 int PSMOUSE_TOUCHKIT_PS2 ; 
 int PSMOUSE_TRACKPOINT ; 
 scalar_t__ FUNC0 (struct psmouse*,int) ; 
 scalar_t__ FUNC1 (struct psmouse*) ; 
 scalar_t__ FUNC2 (struct psmouse*,int) ; 
 scalar_t__ FUNC3 (struct psmouse*) ; 
 scalar_t__ FUNC4 (struct psmouse*,int) ; 
 scalar_t__ FUNC5 (struct psmouse*) ; 
 scalar_t__ FUNC6 (struct psmouse*,int) ; 
 scalar_t__ FUNC7 (struct psmouse*,int) ; 
 scalar_t__ FUNC8 (struct psmouse*) ; 
 scalar_t__ FUNC9 (struct psmouse*,int) ; 
 scalar_t__ FUNC10 (struct psmouse*,int) ; 
 scalar_t__ FUNC11 (struct psmouse*,int) ; 
 scalar_t__ FUNC12 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (struct psmouse*,int) ; 
 scalar_t__ FUNC15 (struct psmouse*,int) ; 
 int /*<<< orphan*/  FUNC16 (struct psmouse*) ; 
 scalar_t__ FUNC17 (struct psmouse*,int) ; 
 scalar_t__ FUNC18 (struct psmouse*) ; 
 int /*<<< orphan*/  FUNC19 (struct psmouse*) ; 
 scalar_t__ FUNC20 () ; 
 scalar_t__ FUNC21 (struct psmouse*,int) ; 
 scalar_t__ FUNC22 (struct psmouse*,int) ; 
 scalar_t__ FUNC23 (struct psmouse*,int) ; 

__attribute__((used)) static int FUNC24(struct psmouse *psmouse,
			      unsigned int max_proto, bool set_properties)
{
	bool synaptics_hardware = false;

/*
 * We always check for lifebook because it does not disturb mouse
 * (it only checks DMI information).
 */
	if (FUNC11(psmouse, set_properties) == 0) {
		if (max_proto > PSMOUSE_IMEX) {
			if (!set_properties || FUNC12(psmouse) == 0)
				return PSMOUSE_LIFEBOOK;
		}
	}

/*
 * Try Kensington ThinkingMouse (we try first, because synaptics probe
 * upsets the thinkingmouse).
 */

	if (max_proto > PSMOUSE_IMEX && FUNC21(psmouse, set_properties) == 0)
		return PSMOUSE_THINKPS;

/*
 * Try Synaptics TouchPad. Note that probing is done even if Synaptics protocol
 * support is disabled in config - we need to know if it is synaptics so we
 * can reset it properly after probing for intellimouse.
 */
	if (max_proto > PSMOUSE_PS2 && FUNC17(psmouse, set_properties) == 0) {
		synaptics_hardware = true;

		if (max_proto > PSMOUSE_IMEX) {
/*
 * Try activating protocol, but check if support is enabled first, since
 * we try detecting Synaptics even when protocol is disabled.
 */
			if (FUNC20() &&
			    (!set_properties || FUNC18(psmouse) == 0)) {
				return PSMOUSE_SYNAPTICS;
			}

/*
 * Some Synaptics touchpads can emulate extended protocols (like IMPS/2).
 * Unfortunately Logitech/Genius probes confuse some firmware versions so
 * we'll have to skip them.
 */
			max_proto = PSMOUSE_IMEX;
		}
/*
 * Make sure that touchpad is in relative mode, gestures (taps) are enabled
 */
		FUNC19(psmouse);
	}

/*
 * Try ALPS TouchPad
 */
	if (max_proto > PSMOUSE_IMEX) {
		FUNC13(&psmouse->ps2dev, NULL, PSMOUSE_CMD_RESET_DIS);
		if (FUNC0(psmouse, set_properties) == 0) {
			if (!set_properties || FUNC1(psmouse) == 0)
				return PSMOUSE_ALPS;
/*
 * Init failed, try basic relative protocols
 */
			max_proto = PSMOUSE_IMEX;
		}
	}

/*
 * Try OLPC HGPK touchpad.
 */
	if (max_proto > PSMOUSE_IMEX &&
			FUNC7(psmouse, set_properties) == 0) {
		if (!set_properties || FUNC8(psmouse) == 0)
			return PSMOUSE_HGPK;
/*
 * Init failed, try basic relative protocols
 */
		max_proto = PSMOUSE_IMEX;
	}

/*
 * Try Elantech touchpad.
 */
	if (max_proto > PSMOUSE_IMEX &&
			FUNC2(psmouse, set_properties) == 0) {
		if (!set_properties || FUNC3(psmouse) == 0)
			return PSMOUSE_ELANTECH;
/*
 * Init failed, try basic relative protocols
 */
		max_proto = PSMOUSE_IMEX;
	}


	if (max_proto > PSMOUSE_IMEX) {
		if (FUNC6(psmouse, set_properties) == 0)
			return PSMOUSE_GENPS;

		if (FUNC15(psmouse, set_properties) == 0)
			return PSMOUSE_PS2PP;

		if (FUNC23(psmouse, set_properties) == 0)
			return PSMOUSE_TRACKPOINT;

		if (FUNC22(psmouse, set_properties) == 0)
			return PSMOUSE_TOUCHKIT_PS2;
	}

/*
 * Try Finger Sensing Pad. We do it here because its probe upsets
 * Trackpoint devices (causing TP_READ_ID command to time out).
 */
	if (max_proto > PSMOUSE_IMEX) {
		if (FUNC4(psmouse, set_properties) == 0) {
			if (!set_properties || FUNC5(psmouse) == 0)
				return PSMOUSE_FSP;
/*
 * Init failed, try basic relative protocols
 */
			max_proto = PSMOUSE_IMEX;
		}
	}

/*
 * Reset to defaults in case the device got confused by extended
 * protocol probes. Note that we follow up with full reset because
 * some mice put themselves to sleep when they see PSMOUSE_RESET_DIS.
 */
	FUNC13(&psmouse->ps2dev, NULL, PSMOUSE_CMD_RESET_DIS);
	FUNC16(psmouse);

	if (max_proto >= PSMOUSE_IMEX && FUNC9(psmouse, set_properties) == 0)
		return PSMOUSE_IMEX;

	if (max_proto >= PSMOUSE_IMPS && FUNC10(psmouse, set_properties) == 0)
		return PSMOUSE_IMPS;

/*
 * Okay, all failed, we have a standard mouse here. The number of the buttons
 * is still a question, though. We assume 3.
 */
	FUNC14(psmouse, set_properties);

	if (synaptics_hardware) {
/*
 * We detected Synaptics hardware but it did not respond to IMPS/2 probes.
 * We need to reset the touchpad because if there is a track point on the
 * pass through port it could get disabled while probing for protocol
 * extensions.
 */
		FUNC16(psmouse);
	}

	return PSMOUSE_PS2;
}