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
typedef  int /*<<< orphan*/  u8 ;
struct slot {int state; TYPE_1__* hpc_ops; int /*<<< orphan*/  work; struct controller* ctrl; } ;
struct controller {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  (* set_attention_status ) (struct slot*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* green_led_off ) (struct slot*) ;int /*<<< orphan*/  (* green_led_on ) (struct slot*) ;int /*<<< orphan*/  (* green_led_blink ) (struct slot*) ;int /*<<< orphan*/  (* get_power_status ) (struct slot*,int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
#define  BLINKINGOFF_STATE 132 
#define  BLINKINGON_STATE 131 
 int HZ ; 
#define  POWEROFF_STATE 130 
#define  POWERON_STATE 129 
#define  STATIC_STATE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct controller*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct controller*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (struct slot*) ; 
 int /*<<< orphan*/  FUNC5 (struct slot*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (struct slot*) ; 
 int /*<<< orphan*/  FUNC7 (struct slot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct slot*) ; 
 int /*<<< orphan*/  FUNC9 (struct slot*) ; 
 int /*<<< orphan*/  FUNC10 (struct slot*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (struct slot*) ; 

__attribute__((used)) static void FUNC12(struct slot *p_slot)
{
	u8 getstatus;
	struct controller *ctrl = p_slot->ctrl;

	switch (p_slot->state) {
	case STATIC_STATE:
		p_slot->hpc_ops->get_power_status(p_slot, &getstatus);
		if (getstatus) {
			p_slot->state = BLINKINGOFF_STATE;
			FUNC1(ctrl, "PCI slot #%s - powering off due to "
				  "button press.\n", FUNC4(p_slot));
		} else {
			p_slot->state = BLINKINGON_STATE;
			FUNC1(ctrl, "PCI slot #%s - powering on due to "
				  "button press.\n", FUNC4(p_slot));
		}
		/* blink green LED and turn off amber */
		p_slot->hpc_ops->green_led_blink(p_slot);
		p_slot->hpc_ops->set_attention_status(p_slot, 0);

		FUNC3(&p_slot->work, 5*HZ);
		break;
	case BLINKINGOFF_STATE:
	case BLINKINGON_STATE:
		/*
		 * Cancel if we are still blinking; this means that we
		 * press the attention again before the 5 sec. limit
		 * expires to cancel hot-add or hot-remove
		 */
		FUNC1(ctrl, "Button cancel on Slot(%s)\n",
			  FUNC4(p_slot));
		FUNC0(&p_slot->work);
		if (p_slot->state == BLINKINGOFF_STATE)
			p_slot->hpc_ops->green_led_on(p_slot);
		else
			p_slot->hpc_ops->green_led_off(p_slot);
		p_slot->hpc_ops->set_attention_status(p_slot, 0);
		FUNC1(ctrl, "PCI slot #%s - action canceled due to "
			  "button press\n", FUNC4(p_slot));
		p_slot->state = STATIC_STATE;
		break;
	case POWEROFF_STATE:
	case POWERON_STATE:
		/*
		 * Ignore if the slot is on power-on or power-off state;
		 * this means that the previous attention button action
		 * to hot-add or hot-remove is undergoing
		 */
		FUNC1(ctrl, "Button ignore on Slot(%s)\n",
			  FUNC4(p_slot));
		FUNC11(p_slot);
		break;
	default:
		FUNC2(ctrl, "Not a valid state\n");
		break;
	}
}