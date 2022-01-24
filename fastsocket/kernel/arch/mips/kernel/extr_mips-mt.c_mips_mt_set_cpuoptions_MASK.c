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

/* Variables and functions */
 int /*<<< orphan*/  INDEX_0 ; 
 int /*<<< orphan*/  INDEX_8 ; 
 int /*<<< orphan*/  Index_Load_Tag_D ; 
 int /*<<< orphan*/  Index_Store_Tag_D ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int itc_base ; 
 int mt_n_dflushes ; 
 int mt_n_iflushes ; 
 unsigned int mt_opt_config7 ; 
 scalar_t__ mt_opt_forceconfig7 ; 
 scalar_t__ mt_opt_nblsu ; 
 scalar_t__ mt_opt_norps ; 
 scalar_t__ mt_opt_rpsctl ; 
 scalar_t__ mt_protdflush ; 
 scalar_t__ mt_protiflush ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 unsigned int FUNC3 () ; 
 unsigned long FUNC4 () ; 
 unsigned long FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (unsigned int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (unsigned long) ; 

void FUNC9(void)
{
	unsigned int oconfig7 = FUNC3();
	unsigned int nconfig7 = oconfig7;

	if (mt_opt_norps) {
		FUNC2("\"norps\" option deprectated: use \"rpsctl=\"\n");
	}
	if (mt_opt_rpsctl >= 0) {
		FUNC2("34K return prediction stack override set to %d.\n",
			mt_opt_rpsctl);
		if (mt_opt_rpsctl)
			nconfig7 |= (1 << 2);
		else
			nconfig7 &= ~(1 << 2);
	}
	if (mt_opt_nblsu >= 0) {
		FUNC2("34K ALU/LSU sync override set to %d.\n", mt_opt_nblsu);
		if (mt_opt_nblsu)
			nconfig7 |= (1 << 5);
		else
			nconfig7 &= ~(1 << 5);
	}
	if (mt_opt_forceconfig7) {
		FUNC2("CP0.Config7 forced to 0x%08x.\n", mt_opt_config7);
		nconfig7 = mt_opt_config7;
	}
	if (oconfig7 != nconfig7) {
		__asm__ __volatile("sync");
		FUNC6(nconfig7);
		FUNC1();
		FUNC2("Config7: 0x%08x\n", FUNC3());
	}

	/* Report Cache management debug options */
	if (mt_protiflush)
		FUNC2("I-cache flushes single-threaded\n");
	if (mt_protdflush)
		FUNC2("D-cache flushes single-threaded\n");
	if (mt_n_iflushes != 1)
		FUNC2("I-Cache Flushes Repeated %d times\n", mt_n_iflushes);
	if (mt_n_dflushes != 1)
		FUNC2("D-Cache Flushes Repeated %d times\n", mt_n_dflushes);

	if (itc_base != 0) {
		/*
		 * Configure ITC mapping.  This code is very
		 * specific to the 34K core family, which uses
		 * a special mode bit ("ITC") in the ErrCtl
		 * register to enable access to ITC control
		 * registers via cache "tag" operations.
		 */
		unsigned long ectlval;
		unsigned long itcblkgrn;

		/* ErrCtl register is known as "ecc" to Linux */
		ectlval = FUNC5();
		FUNC8(ectlval | (0x1 << 26));
		FUNC1();
#define INDEX_0 (0x80000000)
#define INDEX_8 (0x80000008)
		/* Read "cache tag" for Dcache pseudo-index 8 */
		FUNC0(Index_Load_Tag_D, INDEX_8);
		FUNC1();
		itcblkgrn = FUNC4();
		itcblkgrn &= 0xfffe0000;
		/* Set for 128 byte pitch of ITC cells */
		itcblkgrn |= 0x00000c00;
		/* Stage in Tag register */
		FUNC7(itcblkgrn);
		FUNC1();
		/* Write out to ITU with CACHE op */
		FUNC0(Index_Store_Tag_D, INDEX_8);
		/* Now set base address, and turn ITC on with 0x1 bit */
		FUNC7((itc_base & 0xfffffc00) | 0x1 );
		FUNC1();
		/* Write out to ITU with CACHE op */
		FUNC0(Index_Store_Tag_D, INDEX_0);
		FUNC8(ectlval);
		FUNC1();
		FUNC2("Mapped %ld ITC cells starting at 0x%08x\n",
			((itcblkgrn & 0x7fe00000) >> 20), itc_base);
	}
}