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
typedef  scalar_t__ u32 ;
struct op {int flags; scalar_t__ (* fn ) (unsigned int,unsigned int,unsigned int,scalar_t__) ;} ;

/* Variables and functions */
 size_t FUNC0 (scalar_t__) ; 
 scalar_t__ FOP_EXT ; 
 scalar_t__ FOP_MASK ; 
 size_t FUNC1 (scalar_t__) ; 
 unsigned int FPSCR_LENGTH_BIT ; 
 scalar_t__ FPSCR_LENGTH_MASK ; 
 scalar_t__ FPSCR_STRIDE_MASK ; 
 unsigned int FUNC2 (unsigned int) ; 
 unsigned int FUNC3 (unsigned int) ; 
 int OP_SCALAR ; 
 int OP_SD ; 
 int OP_SM ; 
 struct op* fops ; 
 struct op* fops_ext ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int,scalar_t__,...) ; 
 scalar_t__ FUNC5 (unsigned int,unsigned int,unsigned int,scalar_t__) ; 
 unsigned int FUNC6 (scalar_t__) ; 
 unsigned int FUNC7 (scalar_t__) ; 
 unsigned int FUNC8 (scalar_t__) ; 
 unsigned int FUNC9 (scalar_t__) ; 
 unsigned int FUNC10 (scalar_t__) ; 

u32 FUNC11(u32 inst, u32 fpscr)
{
	u32 op = inst & FOP_MASK;
	u32 exceptions = 0;
	unsigned int dest;
	unsigned int dn = FUNC8(inst);
	unsigned int dm;
	unsigned int vecitr, veclen, vecstride;
	struct op *fop;

	vecstride = (1 + ((fpscr & FPSCR_STRIDE_MASK) == FPSCR_STRIDE_MASK));

	fop = (op == FOP_EXT) ? &fops_ext[FUNC0(inst)] : &fops[FUNC1(op)];

	/*
	 * fcvtds takes an sN register number as destination, not dN.
	 * It also always operates on scalars.
	 */
	if (fop->flags & OP_SD)
		dest = FUNC9(inst);
	else
		dest = FUNC6(inst);

	/*
	 * f[us]ito takes a sN operand, not a dN operand.
	 */
	if (fop->flags & OP_SM)
		dm = FUNC10(inst);
	else
		dm = FUNC7(inst);

	/*
	 * If destination bank is zero, vector length is always '1'.
	 * ARM DDI0100F C5.1.3, C5.3.2.
	 */
	if ((fop->flags & OP_SCALAR) || (FUNC2(dest) == 0))
		veclen = 0;
	else
		veclen = fpscr & FPSCR_LENGTH_MASK;

	FUNC4("VFP: vecstride=%u veclen=%u\n", vecstride,
		 (veclen >> FPSCR_LENGTH_BIT) + 1);

	if (!fop->fn)
		goto invalid;

	for (vecitr = 0; vecitr <= veclen; vecitr += 1 << FPSCR_LENGTH_BIT) {
		u32 except;
		char type;

		type = fop->flags & OP_SD ? 's' : 'd';
		if (op == FOP_EXT)
			FUNC4("VFP: itr%d (%c%u) = op[%u] (d%u)\n",
				 vecitr >> FPSCR_LENGTH_BIT,
				 type, dest, dn, dm);
		else
			FUNC4("VFP: itr%d (%c%u) = (d%u) op[%u] (d%u)\n",
				 vecitr >> FPSCR_LENGTH_BIT,
				 type, dest, dn, FUNC1(op), dm);

		except = fop->fn(dest, dn, dm, fpscr);
		FUNC4("VFP: itr%d: exceptions=%08x\n",
			 vecitr >> FPSCR_LENGTH_BIT, except);

		exceptions |= except;

		/*
		 * CHECK: It appears to be undefined whether we stop when
		 * we encounter an exception.  We continue.
		 */
		dest = FUNC2(dest) + ((FUNC3(dest) + vecstride) & 3);
		dn = FUNC2(dn) + ((FUNC3(dn) + vecstride) & 3);
		if (FUNC2(dm) != 0)
			dm = FUNC2(dm) + ((FUNC3(dm) + vecstride) & 3);
	}
	return exceptions;

 invalid:
	return ~0;
}