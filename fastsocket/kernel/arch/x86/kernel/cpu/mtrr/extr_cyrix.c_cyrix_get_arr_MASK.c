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
typedef  int /*<<< orphan*/  mtrr_type ;

/* Variables and functions */
 unsigned int CX86_ARR_BASE ; 
 unsigned int CX86_CCR3 ; 
 unsigned int CX86_RCR_BASE ; 
 int /*<<< orphan*/  MTRR_TYPE_UNCACHABLE ; 
 int /*<<< orphan*/  MTRR_TYPE_WRBACK ; 
 int /*<<< orphan*/  MTRR_TYPE_WRCOMB ; 
 int /*<<< orphan*/  MTRR_TYPE_WRTHROUGH ; 
 unsigned long PAGE_SHIFT ; 
 unsigned char FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (unsigned int,unsigned char) ; 

__attribute__((used)) static void
FUNC4(unsigned int reg, unsigned long *base,
	      unsigned long *size, mtrr_type * type)
{
	unsigned char arr, ccr3, rcr, shift;
	unsigned long flags;

	arr = CX86_ARR_BASE + (reg << 1) + reg;	/* avoid multiplication by 3 */

	FUNC2(flags);

	ccr3 = FUNC0(CX86_CCR3);
	FUNC3(CX86_CCR3, (ccr3 & 0x0f) | 0x10);	/* enable MAPEN */
	((unsigned char *)base)[3] = FUNC0(arr);
	((unsigned char *)base)[2] = FUNC0(arr + 1);
	((unsigned char *)base)[1] = FUNC0(arr + 2);
	rcr = FUNC0(CX86_RCR_BASE + reg);
	FUNC3(CX86_CCR3, ccr3);			/* disable MAPEN */

	FUNC1(flags);

	shift = ((unsigned char *) base)[1] & 0x0f;
	*base >>= PAGE_SHIFT;

	/*
	 * Power of two, at least 4K on ARR0-ARR6, 256K on ARR7
	 * Note: shift==0xf means 4G, this is unsupported.
	 */
	if (shift)
		*size = (reg < 7 ? 0x1UL : 0x40UL) << (shift - 1);
	else
		*size = 0;

	/* Bit 0 is Cache Enable on ARR7, Cache Disable on ARR0-ARR6 */
	if (reg < 7) {
		switch (rcr) {
		case 1:
			*type = MTRR_TYPE_UNCACHABLE;
			break;
		case 8:
			*type = MTRR_TYPE_WRBACK;
			break;
		case 9:
			*type = MTRR_TYPE_WRCOMB;
			break;
		case 24:
		default:
			*type = MTRR_TYPE_WRTHROUGH;
			break;
		}
	} else {
		switch (rcr) {
		case 0:
			*type = MTRR_TYPE_UNCACHABLE;
			break;
		case 8:
			*type = MTRR_TYPE_WRCOMB;
			break;
		case 9:
			*type = MTRR_TYPE_WRBACK;
			break;
		case 25:
		default:
			*type = MTRR_TYPE_WRTHROUGH;
			break;
		}
	}
}