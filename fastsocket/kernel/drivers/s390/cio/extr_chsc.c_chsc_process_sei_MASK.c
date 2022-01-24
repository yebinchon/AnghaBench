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
struct chsc_sei_area {int flags; int cc; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (struct chsc_sei_area*) ; 
 int /*<<< orphan*/  FUNC2 (struct chsc_sei_area*) ; 
 int /*<<< orphan*/  FUNC3 (struct chsc_sei_area*) ; 
 int /*<<< orphan*/  FUNC4 (struct chsc_sei_area*) ; 
 int /*<<< orphan*/  FUNC5 (struct chsc_sei_area*) ; 
 int /*<<< orphan*/  FUNC6 (struct chsc_sei_area*) ; 
 int /*<<< orphan*/  FUNC7 () ; 

__attribute__((used)) static void FUNC8(struct chsc_sei_area *sei_area)
{
	/* Check if we might have lost some information. */
	if (sei_area->flags & 0x40) {
		FUNC0(2, "chsc: event overflow\n");
		FUNC7();
	}
	/* which kind of information was stored? */
	switch (sei_area->cc) {
	case 1: /* link incident*/
		FUNC3(sei_area);
		break;
	case 2: /* i/o resource accessibility */
		FUNC4(sei_area);
		break;
	case 7: /* channel-path-availability information */
		FUNC1(sei_area);
		break;
	case 8: /* channel-path-configuration notification */
		FUNC2(sei_area);
		break;
	case 12: /* scm change notification */
		FUNC6(sei_area);
		break;
	case 14: /* scm available notification */
		FUNC5(sei_area);
		break;
	default: /* other stuff */
		FUNC0(4, "chsc: unhandled sei content code %d\n",
			      sei_area->cc);
		break;
	}
}