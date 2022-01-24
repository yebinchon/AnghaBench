#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
typedef  int /*<<< orphan*/  u16 ;
struct TYPE_6__ {int mode; int /*<<< orphan*/  unit; int /*<<< orphan*/  port; int /*<<< orphan*/  device; } ;
typedef  TYPE_1__ PIA ;

/* Variables and functions */
 int TEST_LEN ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 char FUNC4 (int,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 char FUNC6 () ; 
 int FUNC7 () ; 
 char FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 (int) ; 

__attribute__((used)) static int FUNC14( PIA *pi, char * scratch, int verbose )

{	int i, e, l, h, om;
	char buf[TEST_LEN];

	FUNC3(pi);

	switch (pi->mode) {

	case 0: FUNC1(pi);
		FUNC0(0x13,0x7f);
		FUNC12(0x13); FUNC11(2);
		for(i=0;i<TEST_LEN;i++) {
                    FUNC11(4); l = FUNC7();
                    FUNC11(4); h = FUNC7();
                    buf[i] = FUNC4(l,h);
		}
		FUNC2(pi);
		break;

        case 1: FUNC1(pi);
		FUNC0(0x13,0x7f);
                FUNC12(0x13); FUNC11(2); FUNC11(0x20);
                for(i=0;i<TEST_LEN;i++) { FUNC11(4); buf[i] = FUNC6(); }
                FUNC11(1); FUNC11(0x20);
		FUNC2(pi);
		break;

	case 2:
	case 3:
	case 4: om = pi->mode;
		pi->mode = 0;
		FUNC1(pi);
		FUNC0(7,3);
		FUNC0(4,8);
		FUNC2(pi);

		pi->mode = om;
		FUNC1(pi);
		FUNC12(0x13); FUNC13(9); FUNC13(1); FUNC12(0); FUNC13(3); FUNC13(0); FUNC13(0xe0);

		switch (pi->mode) {
		  case 2: for (i=0;i<TEST_LEN;i++) buf[i] = FUNC8();
			  break;
		  case 3: for (i=0;i<TEST_LEN/2;i++) ((u16 *)buf)[i] = FUNC10();
                          break;
		  case 4: for (i=0;i<TEST_LEN/4;i++) ((u32 *)buf)[i] = FUNC9();
                          break;
		}

		FUNC13(0);
		FUNC0(7,0);
		FUNC2(pi);

		break;

	}

	if (verbose) {
	    FUNC5("%s: bpck: 0x%x unit %d mode %d: ",
		   pi->device,pi->port,pi->unit,pi->mode);
	    for (i=0;i<TEST_LEN;i++) FUNC5("%3d",buf[i]);
	    FUNC5("\n");
	}

	e = 0;
	for (i=0;i<TEST_LEN;i++) if (buf[i] != (i+1)) e++;
	return e;
}