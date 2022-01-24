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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7( PIA *pi, char * buf, int count )

{       int	k;

        switch (pi->mode) {

        case 0: 
        case 1: FUNC1(1); P1; FUNC1(1); P2; 
		FUNC1(2); P1; FUNC1(0x18+pi->mode); P2; FUNC1(0); P1;
		FUNC0(10);
		for (k=0;k<count/2;k++) {
                        FUNC2(5); FUNC1(buf[2*k]); 
			FUNC2(7); FUNC1(buf[2*k+1]);
                }
                FUNC2(5); FUNC2(4);
		FUNC1(2); P1; FUNC1(8+pi->mode); P2;
                break;

        case 2: FUNC3(1); FUNC3(1); FUNC2(5); FUNC4(1); FUNC2(4);
		FUNC3(0); FUNC3(0); FUNC2(0xc5);
		FUNC0(10);
                for (k=0;k<count;k++) FUNC4(buf[k]);
		FUNC2(0xc4);
                break;

        case 3: FUNC3(1); FUNC3(1); FUNC2(5); FUNC4(1); FUNC2(4);
                FUNC3(0); FUNC3(0); FUNC2(0xc5);
                FUNC0(10);
                for (k=0;k<count/2;k++) FUNC6(((u16 *)buf)[k]);
                FUNC2(0xc4);
                break;

        case 4: FUNC3(1); FUNC3(1); FUNC2(5); FUNC4(1); FUNC2(4);
                FUNC3(0); FUNC3(0); FUNC2(0xc5);
                FUNC0(10);
                for (k=0;k<count/4;k++) FUNC5(((u32 *)buf)[k]);
                FUNC2(0xc4);
                break;

        }

}