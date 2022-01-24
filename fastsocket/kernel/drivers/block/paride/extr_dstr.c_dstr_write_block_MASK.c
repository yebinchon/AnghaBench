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
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5( PIA *pi, char * buf, int count )

{       int	k;

        FUNC0(0x81); P1;
        if (pi->mode) { FUNC0(0x19); } else { FUNC0(9); }
        P2; FUNC0(0x82); P1; P3; FUNC0(0x20); P1;

        switch (pi->mode) {

        case 0:
        case 1: for (k=0;k<count;k++) {
                        FUNC1(5); FUNC0(buf[k]); FUNC1(7);
                }
                FUNC1(5); FUNC1(4);
                break;

        case 2: FUNC1(0xc5);
                for (k=0;k<count;k++) FUNC2(buf[k]);
		FUNC1(0xc4);
                break;

        case 3: FUNC1(0xc5);
                for (k=0;k<count/2;k++) FUNC4(((u16 *)buf)[k]);
                FUNC1(0xc4);
                break;

        case 4: FUNC1(0xc5);
                for (k=0;k<count/4;k++) FUNC3(((u32 *)buf)[k]);
                FUNC1(0xc4);
                break;

        }
}