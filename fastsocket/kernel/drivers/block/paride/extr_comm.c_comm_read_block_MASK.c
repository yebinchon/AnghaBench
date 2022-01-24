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
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_3__ {int mode; } ;
typedef  TYPE_1__ PIA ;

/* Variables and functions */
 int /*<<< orphan*/  P1 ; 
 char FUNC0 (int,int) ; 
 char FUNC1 () ; 
 int FUNC2 () ; 
 char FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static void FUNC9( PIA *pi, char * buf, int count )

{       int     i, l, h;

        switch (pi->mode) {
        
        case 0: FUNC6(0x48); P1;
                for(i=0;i<count;i++) {
                        FUNC6(0); FUNC7(6); l = FUNC2();
                        FUNC6(0x80); h = FUNC2(); FUNC7(4);
                        buf[i] = FUNC0(l,h);
                }
                break;

        case 1: FUNC6(0x68); P1; FUNC6(0);
                for(i=0;i<count;i++) {
                        FUNC7(0x26); buf[i] = FUNC1(); FUNC7(0x24);
                }
		FUNC7(4);
		break;
		
	case 2: FUNC8(0x68); (void)FUNC2(); FUNC7(0x24);
		for (i=0;i<count;i++) buf[i] = FUNC3();
		FUNC7(4);
		break;

        case 3: FUNC8(0x68); (void)FUNC2(); FUNC7(0x24);
                for (i=0;i<count/2;i++) ((u16 *)buf)[i] = FUNC5();
                FUNC7(4);
                break;

        case 4: FUNC8(0x68); (void)FUNC2(); FUNC7(0x24);
                for (i=0;i<count/4;i++) ((u32 *)buf)[i] = FUNC4();
                FUNC7(4);
                break;
		
	}
}