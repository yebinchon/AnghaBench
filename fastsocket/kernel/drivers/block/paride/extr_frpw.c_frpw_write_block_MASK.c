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
 int /*<<< orphan*/  cec4 ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5( PIA *pi, char * buf, int count )
 
{	int	k;

	switch(pi->mode) {

	case 0:
	case 1:
	case 2: FUNC1(4); FUNC0(8); cec4; FUNC1(5);
        	for (k=0;k<count;k++) {
			FUNC0(buf[k]);
			FUNC1(7);FUNC1(5);
		}
		FUNC1(4);
		break;

	case 3: FUNC1(4); FUNC0(0xc8); cec4; FUNC1(5);
		for (k=0;k<count;k++) FUNC2(buf[k]);
		FUNC1(4);
		break;

        case 4: FUNC1(4); FUNC0(0xc8); cec4; FUNC1(5);
                for (k=0;k<count/2;k++) FUNC4(((u16 *)buf)[k]);
                FUNC1(4);
                break;

        case 5: FUNC1(4); FUNC0(0xc8); cec4; FUNC1(5);
                for (k=0;k<count/4;k++) FUNC3(((u32 *)buf)[k]);
                FUNC1(4);
                break;
	}
}