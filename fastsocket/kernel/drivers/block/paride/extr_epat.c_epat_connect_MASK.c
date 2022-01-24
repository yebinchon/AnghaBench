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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 scalar_t__ epatc8 ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static void FUNC6 ( PIA *pi )

{       pi->saved_r0 = FUNC2();
        pi->saved_r2 = FUNC3();

 	/* Initialize the chip */
	FUNC0(0);

	if (epatc8) {
		FUNC0(0x40);FUNC0(0xe0);
		FUNC4(0);FUNC5(1);FUNC5(4);
		FUNC1(0x8,0x12);FUNC1(0xc,0x14);FUNC1(0x12,0x10);
		FUNC1(0xe,0xf);FUNC1(0xf,4);
		/* WR(0xe,0xa);WR(0xf,4); */
		FUNC1(0xe,0xd);FUNC1(0xf,0);
		/* CPP(0x30); */
	}

        /* Connect to the chip */
	FUNC0(0xe0);
        FUNC4(0);FUNC5(1);FUNC5(4); /* Idle into SPP */
        if (pi->mode >= 3) {
          FUNC4(0);FUNC5(1);FUNC5(4);FUNC5(0xc);
          /* Request EPP */
          FUNC4(0x40);FUNC5(6);FUNC5(7);FUNC5(4);FUNC5(0xc);FUNC5(4);
        }

	if (!epatc8) {
		FUNC1(8,0x10); FUNC1(0xc,0x14); FUNC1(0xa,0x38); FUNC1(0x12,0x10);
	}
}