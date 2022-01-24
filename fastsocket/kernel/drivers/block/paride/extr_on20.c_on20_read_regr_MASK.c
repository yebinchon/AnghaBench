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
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int FUNC6( PIA *pi, int cont, int regr )

{	int h,l, r ;

        r = (regr<<2) + 1 + cont;

        FUNC1(1); FUNC4(r); FUNC1(0);

	switch (pi->mode)  {

        case 0:  FUNC5(4); FUNC5(6); l = FUNC3();
                 FUNC5(4); FUNC5(6); h = FUNC3();
                 FUNC5(4); FUNC5(6); FUNC5(4); FUNC5(6); FUNC5(4);
		 return FUNC0(l,h);

	case 1:  FUNC5(4); FUNC5(0x26); r = FUNC2(); 
                 FUNC5(4); FUNC5(0x26); FUNC5(4);
		 return r;

	}
	return -1;
}