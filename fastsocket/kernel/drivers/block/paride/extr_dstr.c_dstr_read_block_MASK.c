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
 int /*<<< orphan*/  P3 ; 
 char FUNC0 (int,int) ; 
 char FUNC1 () ; 
 int FUNC2 () ; 
 char FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static void FUNC8( PIA *pi, char * buf, int count )

{       int     k, a, b;

        FUNC6(0x81); P1;
        if (pi->mode) { FUNC6(0x19); } else { FUNC6(9); }
	P2; FUNC6(0x82); P1; P3; FUNC6(0x20); P1;

        switch (pi->mode) {

        case 0: for (k=0;k<count;k++) {
                        FUNC7(6); a = FUNC2(); FUNC7(4);
                        FUNC7(6); b = FUNC2(); FUNC7(4);
                        buf[k] = FUNC0(a,b);
                } 
                break;

        case 1: FUNC6(0);
                for (k=0;k<count;k++) {
                        FUNC7(0x26); buf[k] = FUNC1(); FUNC7(0x24);
                }
                FUNC7(4);
                break;

        case 2: FUNC7(0x24); 
                for (k=0;k<count;k++) buf[k] = FUNC3();
                FUNC7(4);
                break;

        case 3: FUNC7(0x24); 
                for (k=0;k<count/2;k++) ((u16 *)buf)[k] = FUNC5();
                FUNC7(4);
                break;

        case 4: FUNC7(0x24); 
                for (k=0;k<count/4;k++) ((u32 *)buf)[k] = FUNC4();
                FUNC7(4);
                break;

        }
}