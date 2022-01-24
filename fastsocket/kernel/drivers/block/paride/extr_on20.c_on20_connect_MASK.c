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
struct TYPE_3__ {scalar_t__ mode; int /*<<< orphan*/  saved_r2; int /*<<< orphan*/  saved_r0; } ;
typedef  TYPE_1__ PIA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6 ( PIA *pi)

{	pi->saved_r0 = FUNC1();
        pi->saved_r2 = FUNC2();

	FUNC5(4);FUNC4(0);FUNC5(0xc);FUNC5(4);FUNC5(6);FUNC5(4);FUNC5(6);FUNC5(4); 
	if (pi->mode) { FUNC0(2); FUNC3(8); FUNC0(2); FUNC3(9); }
	       else   { FUNC0(2); FUNC3(0); FUNC0(2); FUNC3(8); }
}