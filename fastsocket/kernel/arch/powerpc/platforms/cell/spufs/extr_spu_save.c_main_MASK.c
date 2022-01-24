#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {void** ui; } ;
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
 int /*<<< orphan*/  FUNC15 (TYPE_1__) ; 
 void* FUNC16 (int /*<<< orphan*/ ) ; 

int FUNC17()
{
	addr64 lscsa_ea;

	lscsa_ea.ui[0] = FUNC16(SPU_RdSigNotify1);
	lscsa_ea.ui[1] = FUNC16(SPU_RdSigNotify2);

	/* Step 1: done by exit(). */
	FUNC7();	/* Step 2.  */
	FUNC10();	/* Step 3.  */
	FUNC12();	/* Step 4.  */
	FUNC13();		/* Step 5.  */
	FUNC0(lscsa_ea);	/* Step 6.  */
	FUNC11(lscsa_ea);	/* Step 7.  */
	/* Step 8: done by exit(). */
	FUNC8();		/* Step 9.  */
	FUNC6();		/* Step 10. */
	FUNC9();		/* Step 11. */
	FUNC1(lscsa_ea);	/* Step 12. */
	FUNC15(lscsa_ea);	/* Step 13. */
	FUNC2(lscsa_ea);	/* Step 14. */
	FUNC14();	/* Step 15. */
	FUNC4();	/* Step 16. */
	FUNC3();	/* Step 17. */
	FUNC5();	/* Step 18. */

	return 0;
}