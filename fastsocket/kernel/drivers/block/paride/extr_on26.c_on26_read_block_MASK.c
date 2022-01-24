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
 int /*<<< orphan*/  P2 ; 
 char FUNC0 (int,int) ; 
 char FUNC1 () ; 
 int FUNC2 () ; 
 char FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 

__attribute__((used)) static void FUNC11( PIA *pi, char * buf, int count )

{       int     k, a, b;

        switch (pi->mode) {

        case 0: FUNC7(1); P1; FUNC7(1); P2; FUNC7(2); P1; FUNC7(0x18); P2; FUNC7(0); P1;
		FUNC6(10);
		for (k=0;k<count;k++) {
                        FUNC8(6); a = FUNC2();
                        FUNC8(4); b = FUNC2();
                        buf[k] = FUNC0(a,b);
                }
		FUNC7(2); P1; FUNC7(8); P2; 
                break;

        case 1: FUNC7(1); P1; FUNC7(1); P2; FUNC7(2); P1; FUNC7(0x19); P2; FUNC7(0); P1;
		FUNC6(10);
                for (k=0;k<count/2;k++) {
                        FUNC8(0x26); buf[2*k] = FUNC1();  
			FUNC8(0x24); buf[2*k+1] = FUNC1();
                }
                FUNC7(2); P1; FUNC7(9); P2;
                break;

        case 2: FUNC9(1); FUNC9(1); FUNC8(5); FUNC10(1); FUNC8(4);
		FUNC9(0); FUNC9(0); FUNC8(0x24);
		FUNC6(10);
                for (k=0;k<count;k++) buf[k] = FUNC3();
                FUNC8(4);
                break;

        case 3: FUNC9(1); FUNC9(1); FUNC8(5); FUNC10(1); FUNC8(4);
                FUNC9(0); FUNC9(0); FUNC8(0x24);
                FUNC6(10);
                for (k=0;k<count/2;k++) ((u16 *)buf)[k] = FUNC5();
                FUNC8(4);
                break;

        case 4: FUNC9(1); FUNC9(1); FUNC8(5); FUNC10(1); FUNC8(4);
                FUNC9(0); FUNC9(0); FUNC8(0x24);
                FUNC6(10);
                for (k=0;k<count/4;k++) ((u32 *)buf)[k] = FUNC4();
                FUNC8(4);
                break;

        }
}