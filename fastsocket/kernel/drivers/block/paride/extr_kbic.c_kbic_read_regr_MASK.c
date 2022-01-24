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
 int FUNC0 (int,int) ; 
 int FUNC1 (int) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9( PIA *pi, int cont, int regr )

{       int     a, b, s;

        s = cont_map[cont];

	switch (pi->mode) {

	case 0: FUNC6(regr|0x18|s); FUNC7(4); FUNC7(6); FUNC7(4); FUNC7(1); FUNC6(8);
	        a = FUNC3(); FUNC6(0x28); b = FUNC3(); FUNC7(4);
		return FUNC0(a,b);

	case 1: FUNC6(regr|0x38|s); FUNC7(4); FUNC7(6); FUNC7(4); FUNC7(5); FUNC6(8);
		a = FUNC4(); FUNC7(4);
		return FUNC1(a);

	case 2: FUNC6(regr|0x08|s); FUNC7(4); FUNC7(6); FUNC7(4); FUNC7(0xa5); FUNC7(0xa1);
		a = FUNC2(); FUNC7(4);
       		return a;

	case 3:
	case 4:
	case 5: FUNC6(0x20|s); FUNC7(4); FUNC7(6); FUNC7(4); FUNC8(regr);
		a = FUNC5(); b = FUNC5(); FUNC7(4); FUNC7(0); FUNC7(4);
		return a;

	}
	return -1;
}