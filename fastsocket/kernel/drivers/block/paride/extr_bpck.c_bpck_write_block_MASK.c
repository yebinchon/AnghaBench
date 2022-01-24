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
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7( PIA *pi, char * buf, int count )

{	int i;

	switch (pi->mode) {

	case 0: FUNC0(4,0x40);
		FUNC2(0x40); FUNC1(2); FUNC1(1);
		for (i=0;i<count;i++) { FUNC2(buf[i]); FUNC1(4); }
		FUNC0(4,0);
		break;

	case 1: FUNC0(4,0x50);
                FUNC2(0x40); FUNC1(2); FUNC1(1);
                for (i=0;i<count;i++) { FUNC2(buf[i]); FUNC1(4); }
                FUNC0(4,0x10);
		break;

	case 2: FUNC0(4,0x48);
		FUNC2(0x40); FUNC3(9); FUNC3(0); FUNC3(1);
		for (i=0;i<count;i++) FUNC4(buf[i]);
		FUNC3(0);
		FUNC0(4,8);
		break;

        case 3: FUNC0(4,0x48);
                FUNC2(0x40); FUNC3(9); FUNC3(0); FUNC3(1);
                for (i=0;i<count/2;i++) FUNC6(((u16 *)buf)[i]);
                FUNC3(0);
                FUNC0(4,8);
                break;
 
        case 4: FUNC0(4,0x48);
                FUNC2(0x40); FUNC3(9); FUNC3(0); FUNC3(1);
                for (i=0;i<count/4;i++) FUNC5(((u32 *)buf)[i]);
                FUNC3(0);
                FUNC0(4,8);
                break;
 	}
}