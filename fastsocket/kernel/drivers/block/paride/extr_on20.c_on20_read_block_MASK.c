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
struct TYPE_3__ {scalar_t__ mode; } ;
typedef  TYPE_1__ PIA ;

/* Variables and functions */
 char FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 char FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6( PIA *pi, char * buf, int count )

{	int     k, l, h; 

	FUNC1(1); FUNC4(1); FUNC1(0);

	for (k=0;k<count;k++) 
	    if (pi->mode) {
		FUNC5(4); FUNC5(0x26); buf[k] = FUNC2();
	    } else {
		FUNC5(6); l = FUNC3(); FUNC5(4);
		FUNC5(6); h = FUNC3(); FUNC5(4);
		buf[k] = FUNC0(l,h);
	    }
	FUNC5(4);
}