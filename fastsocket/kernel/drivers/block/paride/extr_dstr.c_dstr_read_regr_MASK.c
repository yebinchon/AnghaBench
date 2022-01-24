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
 int /*<<< orphan*/  P2 ; 
 int* cont_map ; 
 int FUNC0 (int,int) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6( PIA *pi, int cont, int regr )

{       int     a, b, r;

        r = regr + cont_map[cont];

	FUNC4(0x81); P1;
	if (pi->mode) { FUNC4(0x11); } else { FUNC4(1); }
	P2; FUNC4(r); P1;

        switch (pi->mode)  {

        case 0: FUNC5(6); a = FUNC2(); FUNC5(4); FUNC5(6); b = FUNC2(); FUNC5(4);
                return FUNC0(a,b);

        case 1: FUNC4(0); FUNC5(0x26); a = FUNC1(); FUNC5(4);
                return a;

	case 2:
	case 3:
        case 4: FUNC5(0x24); a = FUNC3(); FUNC5(4);
                return a;

        }
        return -1;
}