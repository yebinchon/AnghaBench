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
struct TYPE_6__ {void** ui; } ;
typedef  TYPE_1__ addr64 ;

/* Variables and functions */
 int /*<<< orphan*/  SPU_RdSigNotify1 ; 
 int /*<<< orphan*/  SPU_RdSigNotify2 ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 void* FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 int /*<<< orphan*/  FUNC17 () ; 

int FUNC18()
{
	addr64 lscsa_ea;

	lscsa_ea.ui[0] = FUNC15(SPU_RdSigNotify1);
	lscsa_ea.ui[1] = FUNC15(SPU_RdSigNotify2);
	FUNC2(lscsa_ea);

	FUNC12();		/* Step 1.  */
	FUNC13();			/* Step 2.  */
	FUNC0(lscsa_ea);	/* Step 3.  */
	FUNC11(lscsa_ea);	/* Step 4.  */
					/* Step 5: done by 'exit'. */
	FUNC1(lscsa_ea);	/* Step 7. */
	FUNC14();		/* Step 8. */
	FUNC4();		/* Step 9. */
	FUNC6();			/* moved Step 6. */
	FUNC3();		/* Step 10. */
	FUNC16();			/* Step 11. */
	FUNC17();		/* Step 12. */
	FUNC8();			/* Step 13. */
	FUNC9();			/* Step 14. */
	FUNC7();		/* Step 15. */
	FUNC10();		/* Step 16. */
					/* Step 17. done by 'exit'. */
	FUNC5();		/* Step 18. */

	return 0;
}