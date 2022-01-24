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
typedef  int /*<<< orphan*/  PIA ;

/* Variables and functions */
 char FUNC0 (int,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4( PIA *pi, char * buf, int count )

{	int  k, a, b, c, d;

	FUNC3(0xc); FUNC2(0x10);

	for (k=0;k<count/4;k++) {

		FUNC3(4); FUNC3(5);
		FUNC2(0); a = FUNC1(); FUNC2(1); b = FUNC1();
		FUNC2(3); c = FUNC1(); FUNC2(2); d = FUNC1(); 
		buf[4*k+0] = FUNC0(a,b);
		buf[4*k+1] = FUNC0(d,c);

                FUNC3(4); FUNC3(5);
                       a = FUNC1(); FUNC2(3); b = FUNC1();
                FUNC2(1); c = FUNC1(); FUNC2(0); d = FUNC1(); 
                buf[4*k+2] = FUNC0(d,c);
                buf[4*k+3] = FUNC0(a,b);

	}

	FUNC3(4);

}