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
 char FUNC0 (int,int) ; 
 char FUNC1 (int /*<<< orphan*/ ) ; 
 char FUNC2 () ; 
 int FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC11( PIA *pi, char * buf, int count )

{       int     k, a, b;

        switch (pi->mode) {

        case 0: FUNC8(0x98); FUNC9(4); FUNC9(6); FUNC9(4);
                for (k=0;k<count/2;k++) {
			FUNC9(1); FUNC8(8);    a = FUNC3();
			       FUNC8(0x28); b = FUNC3();
			buf[2*k]   = FUNC0(a,b);
			FUNC9(5);           b = FUNC3();
			       FUNC8(8);    a = FUNC3();
			buf[2*k+1] = FUNC0(a,b);
			FUNC9(4);
                } 
                break;

        case 1: FUNC8(0xb8); FUNC9(4); FUNC9(6); FUNC9(4); 
                for (k=0;k<count/4;k++) {
                        FUNC8(0xb8); 
			FUNC9(4); FUNC9(5); 
                        FUNC8(8);    buf[4*k]   = FUNC1(FUNC4());
			FUNC8(0xb8); buf[4*k+1] = FUNC1(FUNC4());
			FUNC9(4); FUNC9(5);
			          buf[4*k+3] = FUNC1(FUNC4());
			FUNC8(8);    buf[4*k+2] = FUNC1(FUNC4());
                }
                FUNC9(4);
                break;

        case 2: FUNC8(0x88); FUNC9(4); FUNC9(6); FUNC9(4);
                for (k=0;k<count/2;k++) {
                        FUNC9(0xa0); FUNC9(0xa1); buf[2*k] = FUNC2();
                        FUNC9(0xa5); buf[2*k+1] = FUNC2();
                }
                FUNC9(4);
                break;

        case 3: FUNC8(0xa0); FUNC9(4); FUNC9(6); FUNC9(4); FUNC10(0);
                for (k=0;k<count;k++) buf[k] = FUNC5();
                FUNC9(4); FUNC9(0); FUNC9(4);
                break;

	case 4: FUNC8(0xa0); FUNC9(4); FUNC9(6); FUNC9(4); FUNC10(0);
                for (k=0;k<count/2;k++) ((u16 *)buf)[k] = FUNC7();
                FUNC9(4); FUNC9(0); FUNC9(4);
                break;

        case 5: FUNC8(0xa0); FUNC9(4); FUNC9(6); FUNC9(4); FUNC10(0);
                for (k=0;k<count/4;k++) ((u32 *)buf)[k] = FUNC6();
                FUNC9(4); FUNC9(0); FUNC9(4);
                break;


        }
}