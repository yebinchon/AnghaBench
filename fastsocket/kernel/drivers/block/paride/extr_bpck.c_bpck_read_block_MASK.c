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
 char FUNC2 () ; 
 int FUNC3 () ; 
 char FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void FUNC10( PIA *pi, char * buf, int count )

{	int i, l, h;

	switch (pi->mode) {

      	case 0: FUNC0(4,0x40);
		FUNC8(0x40); FUNC7(2);
		for (i=0;i<count;i++) {
		    FUNC7(4); l = FUNC3();
		    FUNC7(4); h = FUNC3();
		    buf[i] = FUNC1(l,h);
		}
		FUNC0(4,0);
		break;

	case 1: FUNC0(4,0x50);
		FUNC8(0x40); FUNC7(2); FUNC7(0x20);
      	        for(i=0;i<count;i++) { FUNC7(4); buf[i] = FUNC2(); }
	        FUNC7(1); FUNC7(0x20);
	        FUNC0(4,0x10);
		break;

	case 2: FUNC0(4,0x48);
		FUNC8(0x40); FUNC9(9); FUNC9(0); FUNC9(0x20);
		for (i=0;i<count;i++) buf[i] = FUNC4();
		FUNC9(0);
		FUNC0(4,8);
		break;

        case 3: FUNC0(4,0x48);
                FUNC8(0x40); FUNC9(9); FUNC9(0); FUNC9(0x20);
                for (i=0;i<count/2;i++) ((u16 *)buf)[i] = FUNC6();
                FUNC9(0);
                FUNC0(4,8);
                break;

        case 4: FUNC0(4,0x48);
                FUNC8(0x40); FUNC9(9); FUNC9(0); FUNC9(0x20);
                for (i=0;i<count/4;i++) ((u32 *)buf)[i] = FUNC5();
                FUNC9(0);
                FUNC0(4,8);
                break;

	}
}