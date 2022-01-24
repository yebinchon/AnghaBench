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
typedef  int /*<<< orphan*/  u32 ;

/* Variables and functions */
 int /*<<< orphan*/  AP ; 
 int /*<<< orphan*/  ASID ; 
 int /*<<< orphan*/  B ; 
 int /*<<< orphan*/  DRP ; 
 int /*<<< orphan*/  G ; 
 int /*<<< orphan*/  MMUCR ; 
 int /*<<< orphan*/  PFN ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SZ ; 
 int /*<<< orphan*/  TLBEHI ; 
 int /*<<< orphan*/  TLBEHI_V ; 
 int /*<<< orphan*/  TLBELO ; 
 int /*<<< orphan*/  TLBELO_C ; 
 int /*<<< orphan*/  TLBELO_D ; 
 int /*<<< orphan*/  VPN ; 
 int /*<<< orphan*/  W ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 int /*<<< orphan*/  FUNC6 (char*,unsigned int,char,char,int,int,int,int,int,char,char,char,char) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(unsigned int index)
{
	u32 tlbehi, tlbehi_save, tlbelo, mmucr, mmucr_save;
	unsigned long flags;

	FUNC5(flags);
	mmucr_save = FUNC7(MMUCR);
	tlbehi_save = FUNC7(TLBEHI);
	mmucr = FUNC1(DRP, index, mmucr_save);
	FUNC8(MMUCR, mmucr);

	FUNC2();
	FUNC3();

	tlbehi = FUNC7(TLBEHI);
	tlbelo = FUNC7(TLBELO);

	FUNC6("%2u: %c %c %02x   %05x %05x %o  %o  %c %c %c %c\n",
	       index,
	       FUNC0(TLBEHI_V, tlbehi) ? '1' : '0',
	       FUNC0(G, tlbelo) ? '1' : '0',
	       FUNC0(ASID, tlbehi),
	       FUNC0(VPN, tlbehi) >> 2,
	       FUNC0(PFN, tlbelo) >> 2,
	       FUNC0(AP, tlbelo),
	       FUNC0(SZ, tlbelo),
	       FUNC0(TLBELO_C, tlbelo) ? 'C' : ' ',
	       FUNC0(B, tlbelo) ? 'B' : ' ',
	       FUNC0(W, tlbelo) ? 'W' : ' ',
	       FUNC0(TLBELO_D, tlbelo) ? 'D' : ' ');

	FUNC8(MMUCR, mmucr_save);
	FUNC8(TLBEHI, tlbehi_save);
	FUNC3();
	FUNC4(flags);
}