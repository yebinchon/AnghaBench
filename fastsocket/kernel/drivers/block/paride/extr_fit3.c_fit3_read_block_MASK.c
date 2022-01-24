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
 char FUNC0 (int,int) ; 
 int FUNC1 () ; 
 int FUNC2 () ; 
 char FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6( PIA *pi, char * buf, int count )

{	int  k, a, b, c, d;

	switch (pi->mode) {

	case 0: FUNC5(0xc); FUNC4(0x10); FUNC5(0x8); FUNC5(0xc);
		for (k=0;k<count/2;k++) {
		    FUNC5(0xd); a = FUNC2();
		    FUNC5(0xf); b = FUNC2();
		    FUNC5(0xc); c = FUNC2();
		    FUNC5(0xe); d = FUNC2();
		    buf[2*k  ] = FUNC0(a,b);
		    buf[2*k+1] = FUNC0(c,d);
		}
		FUNC5(0xc);
		break;

	case 1: FUNC5(0xc); FUNC4(0x90); FUNC5(0x8); FUNC5(0xc); 
		FUNC5(0xec); FUNC5(0xee);
		for (k=0;k<count/2;k++) {
		    FUNC5(0xef); a = FUNC1();
		    FUNC5(0xee); b = FUNC1();
                    buf[2*k  ] = a;
                    buf[2*k+1] = b;
		}
		FUNC5(0xec); 
		FUNC5(0xc);
		break;

	case 2: FUNC5(0xc); FUNC4(0x90); FUNC5(0x8); FUNC5(0xc); 
                FUNC5(0xec);
		for (k=0;k<count;k++) buf[k] = FUNC3();
                FUNC5(0xc);
		break;

	}
}