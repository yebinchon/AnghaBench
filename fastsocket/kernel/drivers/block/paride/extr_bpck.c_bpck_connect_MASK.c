#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int mode; scalar_t__ devtype; scalar_t__ unit; int /*<<< orphan*/  saved_r0; } ;
typedef  TYPE_1__ PIA ;

/* Variables and functions */
 scalar_t__ PI_PCD ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5 ( PIA *pi  )

{       pi->saved_r0 = FUNC1();
	FUNC3(0xff-pi->unit); FUNC4(4); FUNC3(pi->unit);
	FUNC2(8); FUNC2(8); FUNC2(8); 
	FUNC2(2); FUNC2(2);
	
	switch (pi->mode) {

	case 0: FUNC2(8); FUNC0(4,0);
		break;

	case 1: FUNC2(8); FUNC0(4,0x10);
		break;

	case 2:
        case 3:
	case 4: FUNC4(0); FUNC0(4,8);
		break;

	}

	FUNC0(5,8);

	if (pi->devtype == PI_PCD) {
		FUNC0(0x46,0x10);		/* fiddle with ESS logic ??? */
		FUNC0(0x4c,0x38);
		FUNC0(0x4d,0x88);
		FUNC0(0x46,0xa0);
		FUNC0(0x41,0);
		FUNC0(0x4e,8);
		}
}