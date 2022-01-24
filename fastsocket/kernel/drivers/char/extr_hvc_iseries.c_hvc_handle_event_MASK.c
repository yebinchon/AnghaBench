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
struct HvLpEvent {int xSubtype; int /*<<< orphan*/  xRc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct HvLpEvent*) ; 
 int /*<<< orphan*/  HvLpEvent_Rc_InvalidSubtype ; 
 int VIOMINOR_SUBTYPE_MASK ; 
 int /*<<< orphan*/  FUNC1 (struct HvLpEvent*) ; 
 int /*<<< orphan*/  FUNC2 (struct HvLpEvent*) ; 
 int /*<<< orphan*/  FUNC3 (struct HvLpEvent*) ; 
 int /*<<< orphan*/  FUNC4 (struct HvLpEvent*) ; 
 int /*<<< orphan*/  FUNC5 (struct HvLpEvent*) ; 
 int /*<<< orphan*/  FUNC6 (struct HvLpEvent*) ; 
 int /*<<< orphan*/  FUNC7 (struct HvLpEvent*) ; 
#define  viocharack 132 
#define  viocharclose 131 
#define  viocharconfig 130 
#define  viochardata 129 
#define  viocharopen 128 

__attribute__((used)) static void FUNC8(struct HvLpEvent *event)
{
	int charminor;

	if (event == NULL)
		return;

	charminor = event->xSubtype & VIOMINOR_SUBTYPE_MASK;
	switch (charminor) {
	case viocharopen:
		FUNC5(event);
		break;
	case viocharclose:
		FUNC2(event);
		break;
	case viochardata:
		FUNC4(event);
		break;
	case viocharack:
		FUNC1(event);
		break;
	case viocharconfig:
		FUNC3(event);
		break;
	default:
		if (FUNC6(event) && FUNC7(event)) {
			event->xRc = HvLpEvent_Rc_InvalidSubtype;
			FUNC0(event);
		}
	}
}