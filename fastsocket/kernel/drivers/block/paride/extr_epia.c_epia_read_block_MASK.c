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
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 char FUNC1 (int,int) ; 
 char FUNC2 (int,int) ; 
 char FUNC3 () ; 
 int FUNC4 () ; 
 int FUNC5 () ; 
 char FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC12( PIA *pi, char * buf, int count )

{       int     k, ph, a, b;

        switch (pi->mode) {

        case 0: FUNC9(0x81); FUNC10(1); FUNC10(3); FUNC9(0xc1);
                ph = 1;
                for (k=0;k<count;k++) {
                        FUNC10(2+ph); a = FUNC4();
                        FUNC10(4+ph); b = FUNC4();
                        buf[k] = FUNC1(a,b);
                        ph = 1 - ph;
                } 
                FUNC9(0); FUNC10(4);
                break;

        case 1: FUNC9(0x91); FUNC10(1); FUNC9(0x10); FUNC10(3); 
                FUNC9(0x51); FUNC10(5); FUNC9(0xd1); 
                ph = 1;
                for (k=0;k<count;k++) {
                        FUNC10(4+ph);
                        a = FUNC4(); b = FUNC5();
                        buf[k] = FUNC2(a,b);
                        ph = 1 - ph;
                }
                FUNC9(0); FUNC10(4);
                break;

        case 2: FUNC9(0x89); FUNC10(1); FUNC10(0x23); FUNC10(0x21); 
                ph = 1;
                for (k=0;k<count;k++) {
                        FUNC10(0x24+ph);
                        buf[k] = FUNC3();
                        ph = 1 - ph;
                }
                FUNC10(6); FUNC10(4);
                break;

        case 3: if (count > 512) FUNC0(0x84,3);
		FUNC11(0); FUNC10(0x24);
                for (k=0;k<count;k++) buf[k] = FUNC6();
                FUNC10(4); FUNC0(0x84,0);
                break;

        case 4: if (count > 512) FUNC0(0x84,3);
		FUNC11(0); FUNC10(0x24);
		for (k=0;k<count/2;k++) ((u16 *)buf)[k] = FUNC8();
                FUNC10(4); FUNC0(0x84,0);
                break;

        case 5: if (count > 512) FUNC0(0x84,3);
		FUNC11(0); FUNC10(0x24);
                for (k=0;k<count/4;k++) ((u32 *)buf)[k] = FUNC7();
                FUNC10(4); FUNC0(0x84,0);
                break;

        }
}