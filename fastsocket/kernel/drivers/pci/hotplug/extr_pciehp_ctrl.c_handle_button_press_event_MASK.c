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
struct slot {int state; int /*<<< orphan*/  work; struct controller* ctrl; } ;
struct controller {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct controller*) ; 
#define  BLINKINGOFF_STATE 132 
#define  BLINKINGON_STATE 131 
 int HZ ; 
#define  POWEROFF_STATE 130 
#define  POWERON_STATE 129 
 int /*<<< orphan*/  FUNC1 (struct controller*) ; 
#define  STATIC_STATE 128 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct controller*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct controller*,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct slot*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct slot*) ; 
 int /*<<< orphan*/  FUNC7 (struct slot*) ; 
 int /*<<< orphan*/  FUNC8 (struct slot*) ; 
 int /*<<< orphan*/  FUNC9 (struct slot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (struct slot*) ; 
 int /*<<< orphan*/  FUNC12 (struct slot*) ; 

__attribute__((used)) static void FUNC13(struct slot *p_slot)
{
	struct controller *ctrl = p_slot->ctrl;
	u8 getstatus;

	switch (p_slot->state) {
	case STATIC_STATE:
		FUNC5(p_slot, &getstatus);
		if (getstatus) {
			p_slot->state = BLINKINGOFF_STATE;
			FUNC3(ctrl,
				  "PCI slot #%s - powering off due to button "
				  "press.\n", FUNC11(p_slot));
		} else {
			p_slot->state = BLINKINGON_STATE;
			FUNC3(ctrl,
				  "PCI slot #%s - powering on due to button "
				  "press.\n", FUNC11(p_slot));
		}
		/* blink green LED and turn off amber */
		if (FUNC1(ctrl))
			FUNC6(p_slot);
		if (FUNC0(ctrl))
			FUNC9(p_slot, 0);

		FUNC10(&p_slot->work, 5*HZ);
		break;
	case BLINKINGOFF_STATE:
	case BLINKINGON_STATE:
		/*
		 * Cancel if we are still blinking; this means that we
		 * press the attention again before the 5 sec. limit
		 * expires to cancel hot-add or hot-remove
		 */
		FUNC3(ctrl, "Button cancel on Slot(%s)\n", FUNC11(p_slot));
		FUNC2(&p_slot->work);
		if (p_slot->state == BLINKINGOFF_STATE) {
			if (FUNC1(ctrl))
				FUNC8(p_slot);
		} else {
			if (FUNC1(ctrl))
				FUNC7(p_slot);
		}
		if (FUNC0(ctrl))
			FUNC9(p_slot, 0);
		FUNC3(ctrl, "PCI slot #%s - action canceled "
			  "due to button press\n", FUNC11(p_slot));
		p_slot->state = STATIC_STATE;
		break;
	case POWEROFF_STATE:
	case POWERON_STATE:
		/*
		 * Ignore if the slot is on power-on or power-off state;
		 * this means that the previous attention button action
		 * to hot-add or hot-remove is undergoing
		 */
		FUNC3(ctrl, "Button ignore on Slot(%s)\n", FUNC11(p_slot));
		FUNC12(p_slot);
		break;
	default:
		FUNC4(ctrl, "Not a valid state\n");
		break;
	}
}