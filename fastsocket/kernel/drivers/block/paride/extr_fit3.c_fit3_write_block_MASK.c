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
struct TYPE_3__ {int mode; } ;
typedef  TYPE_1__ PIA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 

__attribute__((used)) static void FUNC3( PIA *pi, char * buf, int count )

{	int k;

        switch (pi->mode) {

	case 0:
        case 1: FUNC1(0xc); FUNC0(0); FUNC1(0x8); FUNC1(0xc);
                for (k=0;k<count/2;k++) {
 		    FUNC0(buf[2*k  ]); FUNC1(0xd);
 		    FUNC0(buf[2*k+1]); FUNC1(0xc);
		}
		break;

        case 2: FUNC1(0xc); FUNC0(0); FUNC1(0x8); FUNC1(0xc); 
                for (k=0;k<count;k++) FUNC2(buf[k]);
                FUNC1(0xc);
		break;
	}
}