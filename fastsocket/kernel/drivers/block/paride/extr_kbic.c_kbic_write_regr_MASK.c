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
struct TYPE_3__ {int mode; } ;
typedef  TYPE_1__ PIA ;

/* Variables and functions */
 int* cont_map ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void  FUNC4( PIA *pi, int cont, int regr, int val)

{       int  s;

        s = cont_map[cont];

        switch (pi->mode) {

	case 0: 
        case 1:
	case 2:	FUNC0(regr|0x10|s); FUNC1(4); FUNC1(6); FUNC1(4); 
		FUNC0(val); FUNC1(5); FUNC1(4);
		break;

	case 3:
	case 4:
	case 5: FUNC0(0x20|s); FUNC1(4); FUNC1(6); FUNC1(4); FUNC2(regr);
		FUNC3(val); FUNC3(val);
		FUNC1(4); FUNC1(0); FUNC1(4);
                break;

	}
}