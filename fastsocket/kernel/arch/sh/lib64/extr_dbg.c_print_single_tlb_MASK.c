#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  regType_t ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ ) ; 
 unsigned int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  HOW_TO_READ_TLB_CONTENT ; 
 unsigned long TLB_STEP ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

void FUNC10(unsigned long tlb, int single_print)
{
	regType_t pteH;
	regType_t pteL;
	unsigned int valid, shared, asid, epn, cb, ppn;
	char *pSize;
	char *pProt;

	/*
	   ** in case of single print <single_print> is true, this implies:
	   **   1) print the TLB in any case also if NOT VALID
	   **   2) print out the header
	 */

	pteH = FUNC8(tlb);
	valid = FUNC7(pteH);
	if (single_print)
		FUNC9(HOW_TO_READ_TLB_CONTENT);
	else if (!valid)
		return;

	pteL = FUNC8(tlb + 1);

	shared = FUNC6(pteH);
	asid = FUNC0(pteH);
	epn = FUNC2(pteH);
	cb = FUNC1(pteL);
	pSize = FUNC3(pteL);
	pProt = FUNC5(pteL);
	ppn = FUNC4(pteL);
	FUNC9("[%c%2ld]  0x%08x  0x%08x  %03d   %02x    %02x   %4s    %s\n",
	       ((valid) ? ' ' : 'u'), ((tlb & 0x0ffff) / TLB_STEP),
	       ppn, epn, asid, shared, cb, pSize, pProt);
}