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
struct TYPE_3__ {int saved_r0; int unit; } ;
typedef  TYPE_1__ PIA ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void FUNC4 ( PIA *pi )

/* This fakes the EPP protocol to turn off EPP ... */

{       pi->saved_r0 = FUNC0();
        FUNC2(0xff-pi->unit); FUNC3(4); FUNC2(pi->unit);
        FUNC1(8); FUNC1(8); FUNC1(8); 
        FUNC1(2); FUNC1(2);

        FUNC3(0); 
        FUNC2(4); FUNC3(9); FUNC3(0); 
        FUNC2(0); FUNC3(1); FUNC3(3); FUNC3(0);     
        FUNC2(0); FUNC3(9); FUNC3(0);
        FUNC3(0x4c); FUNC2(pi->saved_r0);
}