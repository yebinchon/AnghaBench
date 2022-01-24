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
 int /*<<< orphan*/  P1 ; 
 int* cont_map ; 
 int FUNC0 (int,int) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 

__attribute__((used)) static int FUNC7( PIA *pi, int cont, int regr )

{       int     l, h, r;

        r = regr + cont_map[cont];

        switch (pi->mode)  {

        case 0: FUNC4(r); P1; FUNC4(0);
        	FUNC5(6); l = FUNC2(); FUNC4(0x80); h = FUNC2(); FUNC5(4);
                return FUNC0(l,h);

        case 1: FUNC4(r+0x20); P1; 
        	FUNC4(0); FUNC5(0x26); h = FUNC1(); FUNC5(4);
                return h;

	case 2:
	case 3:
        case 4: FUNC6(r+0x20); (void)FUNC2();
        	FUNC5(0x24); h = FUNC3(); FUNC5(4);
                return h;

        }
        return -1;
}