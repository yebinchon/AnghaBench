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
 int FUNC1 () ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static int FUNC5( PIA *pi, int cont, int regr )

{	int  a, b, r;

        r = regr + cont_map[cont] + 0x40;

	switch (pi->mode) {

        case 0: FUNC3(r); FUNC4(0xe); FUNC4(6); 
		FUNC4(7); FUNC4(6); FUNC4(0);
		a = FUNC2(); FUNC3(0x10); b = FUNC2(); FUNC4(0xc);
		return FUNC0(a,b);

        case 1: r |= 0x10;
		FUNC3(r); FUNC4(0xe); FUNC4(6); FUNC3(0xff); 
		FUNC4(0x27); FUNC4(0x26); FUNC4(0x20);
		a = FUNC1();
		FUNC4(0x26); FUNC4(0xc);
		return a;
	}
	return -1;
}