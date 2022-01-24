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
struct TYPE_3__ {int mode; int /*<<< orphan*/  saved_r2; int /*<<< orphan*/  saved_r0; } ;
typedef  TYPE_1__ PIA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 

__attribute__((used)) static void FUNC5 ( PIA *pi  )

{       pi->saved_r0 = FUNC1();
        pi->saved_r2 = FUNC2();

        FUNC4(4); FUNC3(0xa0); FUNC3(0x50); FUNC3(0xc0); FUNC3(0x30); FUNC3(0xa0); FUNC3(0);
        FUNC4(1); FUNC4(4);
        if (pi->mode >= 3) { 
                FUNC3(0xa); FUNC4(1); FUNC4(4); FUNC3(0x82); FUNC4(4); FUNC4(0xc); FUNC4(4);
                FUNC4(0x24); FUNC4(0x26); FUNC4(4);
        }
        FUNC0(0x86,8);  
}