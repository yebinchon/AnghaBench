#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_91__   TYPE_76__ ;
typedef  struct TYPE_90__   TYPE_75__ ;
typedef  struct TYPE_89__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {int /*<<< orphan*/ * regs; } ;
struct mips_fpu_struct {unsigned int fcr31; int /*<<< orphan*/ * fpr; } ;
typedef  void* s64 ;
typedef  int /*<<< orphan*/  mips_instruction ;
struct TYPE_89__ {int /*<<< orphan*/  bits; } ;
typedef  TYPE_1__ ieee754sp ;
typedef  TYPE_1__ ieee754dp ;
struct TYPE_91__ {int /*<<< orphan*/  cp1ops; } ;
struct TYPE_90__ {unsigned int rm; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__,int) ; 
 int FPU_CSR_ALL_E ; 
 unsigned int FPU_CSR_ALL_X ; 
 unsigned int FPU_CSR_COND ; 
 unsigned int FPU_CSR_DIV_S ; 
 unsigned int FPU_CSR_DIV_X ; 
 unsigned int FPU_CSR_INE_S ; 
 unsigned int FPU_CSR_INE_X ; 
 unsigned int FPU_CSR_INV_S ; 
 unsigned int FPU_CSR_INV_X ; 
 unsigned int FPU_CSR_OVF_S ; 
 unsigned int FPU_CSR_OVF_X ; 
 unsigned int FPU_CSR_UDF_S ; 
 unsigned int FPU_CSR_UDF_X ; 
 int /*<<< orphan*/  IEEE754_INEXACT ; 
 int /*<<< orphan*/  IEEE754_INVALID_OPERATION ; 
 int /*<<< orphan*/  IEEE754_OVERFLOW ; 
 int /*<<< orphan*/  IEEE754_UNDERFLOW ; 
 int /*<<< orphan*/  IEEE754_ZERO_DIVIDE ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 size_t FUNC5 (int /*<<< orphan*/ ) ; 
 size_t FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int SIGFPE ; 
 int SIGILL ; 
 int /*<<< orphan*/  FUNC8 (int,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__,size_t) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__,int) ; 
 int /*<<< orphan*/ * cmptab ; 
#define  d_fmt 156 
#define  fabs_op 155 
#define  fadd_op 154 
#define  fceil_op 153 
#define  fceill_op 152 
 int fcmp_op ; 
#define  fcvtd_op 151 
#define  fcvtl_op 150 
#define  fcvts_op 149 
#define  fcvtw_op 148 
#define  fdiv_op 147 
#define  ffloor_op 146 
#define  ffloorl_op 145 
#define  fmov_op 144 
#define  fmovc_op 143 
#define  fmovn_op 142 
#define  fmovz_op 141 
#define  fmul_op 140 
#define  fneg_op 139 
 TYPE_1__ FUNC11 (TYPE_1__) ; 
 TYPE_1__ FUNC12 (TYPE_1__) ; 
 TYPE_1__ FUNC13 (TYPE_1__) ; 
 TYPE_1__ FUNC14 (TYPE_1__) ; 
 unsigned int* fpucondbit ; 
 TYPE_76__ fpuemustats ; 
#define  frecip_op 138 
#define  fround_op 137 
#define  froundl_op 136 
#define  frsqrt_op 135 
#define  fsqrt_op 134 
#define  fsub_op 133 
#define  ftrunc_op 132 
#define  ftruncl_op 131 
 TYPE_75__ ieee754_csr ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC16 (TYPE_1__) ; 
 TYPE_1__ FUNC17 (TYPE_1__,TYPE_1__) ; 
 int FUNC18 (TYPE_1__,TYPE_1__,int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_1__ FUNC19 (TYPE_1__,TYPE_1__) ; 
 TYPE_1__ FUNC20 (int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC21 (int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC22 (TYPE_1__) ; 
 TYPE_1__ FUNC23 (TYPE_1__,TYPE_1__) ; 
 TYPE_1__ FUNC24 (TYPE_1__) ; 
 TYPE_1__ FUNC25 (TYPE_1__) ; 
 TYPE_1__ FUNC26 (TYPE_1__,TYPE_1__) ; 
 void* FUNC27 (TYPE_1__) ; 
 void* FUNC28 (TYPE_1__) ; 
 TYPE_1__ FUNC29 (TYPE_1__) ; 
 TYPE_1__ FUNC30 (TYPE_1__,TYPE_1__) ; 
 int FUNC31 (TYPE_1__,TYPE_1__,int /*<<< orphan*/ ,unsigned int) ; 
 TYPE_1__ FUNC32 (TYPE_1__,TYPE_1__) ; 
 TYPE_1__ FUNC33 (TYPE_1__) ; 
 TYPE_1__ FUNC34 (int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC35 (int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC36 (TYPE_1__,TYPE_1__) ; 
 TYPE_1__ FUNC37 (TYPE_1__) ; 
 TYPE_1__ FUNC38 (TYPE_1__) ; 
 TYPE_1__ FUNC39 (TYPE_1__,TYPE_1__) ; 
 void* FUNC40 (TYPE_1__) ; 
 void* FUNC41 (TYPE_1__) ; 
 void** ieee_rm ; 
#define  l_fmt 130 
#define  s_fmt 129 
 TYPE_1__ FUNC42 (TYPE_1__,TYPE_1__) ; 
 TYPE_1__ FUNC43 (TYPE_1__) ; 
 TYPE_1__ FUNC44 (TYPE_1__,TYPE_1__) ; 
 TYPE_1__ FUNC45 (TYPE_1__) ; 
#define  w_fmt 128 

__attribute__((used)) static int FUNC46(struct pt_regs *xcp, struct mips_fpu_struct *ctx,
	mips_instruction ir)
{
	int rfmt;		/* resulting format */
	unsigned rcsr = 0;	/* resulting csr */
	unsigned cond;
	union {
		ieee754dp d;
		ieee754sp s;
		int w;
#ifdef __mips64
		s64 l;
#endif
	} rv;			/* resulting value */

	fpuemustats.cp1ops++;
	switch (rfmt = (FUNC4(ir) & 0xf)) {
	case s_fmt:{		/* 0 */
		union {
			ieee754sp(*b) (ieee754sp, ieee754sp);
			ieee754sp(*u) (ieee754sp);
		} handler;

		switch (FUNC7(ir)) {
			/* binary ops */
		case fadd_op:
			handler.b = ieee754sp_add;
			goto scopbop;
		case fsub_op:
			handler.b = ieee754sp_sub;
			goto scopbop;
		case fmul_op:
			handler.b = ieee754sp_mul;
			goto scopbop;
		case fdiv_op:
			handler.b = ieee754sp_div;
			goto scopbop;

			/* unary  ops */
#if __mips >= 2 || defined(__mips64)
		case fsqrt_op:
			handler.u = ieee754sp_sqrt;
			goto scopuop;
#endif
#if __mips >= 4 && __mips != 32
		case frsqrt_op:
			handler.u = fpemu_sp_rsqrt;
			goto scopuop;
		case frecip_op:
			handler.u = fpemu_sp_recip;
			goto scopuop;
#endif
#if __mips >= 4
		case fmovc_op:
			cond = fpucondbit[MIPSInst_FT(ir) >> 2];
			if (((ctx->fcr31 & cond) != 0) !=
				((MIPSInst_FT(ir) & 1) != 0))
				return 0;
			SPFROMREG(rv.s, MIPSInst_FS(ir));
			break;
		case fmovz_op:
			if (xcp->regs[MIPSInst_FT(ir)] != 0)
				return 0;
			SPFROMREG(rv.s, MIPSInst_FS(ir));
			break;
		case fmovn_op:
			if (xcp->regs[MIPSInst_FT(ir)] == 0)
				return 0;
			SPFROMREG(rv.s, MIPSInst_FS(ir));
			break;
#endif
		case fabs_op:
			handler.u = ieee754sp_abs;
			goto scopuop;
		case fneg_op:
			handler.u = ieee754sp_neg;
			goto scopuop;
		case fmov_op:
			/* an easy one */
			FUNC9(rv.s, FUNC5(ir));
			goto copcsr;

			/* binary op on handler */
		      scopbop:
			{
				ieee754sp fs, ft;

				FUNC9(fs, FUNC5(ir));
				FUNC9(ft, FUNC6(ir));

				rv.s = (*handler.b) (fs, ft);
				goto copcsr;
			}
		      scopuop:
			{
				ieee754sp fs;

				FUNC9(fs, FUNC5(ir));
				rv.s = (*handler.u) (fs);
				goto copcsr;
			}
		      copcsr:
			if (FUNC15(IEEE754_INEXACT))
				rcsr |= FPU_CSR_INE_X | FPU_CSR_INE_S;
			if (FUNC15(IEEE754_UNDERFLOW))
				rcsr |= FPU_CSR_UDF_X | FPU_CSR_UDF_S;
			if (FUNC15(IEEE754_OVERFLOW))
				rcsr |= FPU_CSR_OVF_X | FPU_CSR_OVF_S;
			if (FUNC15(IEEE754_ZERO_DIVIDE))
				rcsr |= FPU_CSR_DIV_X | FPU_CSR_DIV_S;
			if (FUNC15(IEEE754_INVALID_OPERATION))
				rcsr |= FPU_CSR_INV_X | FPU_CSR_INV_S;
			break;

			/* unary conv ops */
		case fcvts_op:
			return SIGILL;	/* not defined */
		case fcvtd_op:{
			ieee754sp fs;

			FUNC9(fs, FUNC5(ir));
			rv.d = FUNC22(fs);
			rfmt = d_fmt;
			goto copcsr;
		}
		case fcvtw_op:{
			ieee754sp fs;

			FUNC9(fs, FUNC5(ir));
			rv.w = FUNC40(fs);
			rfmt = w_fmt;
			goto copcsr;
		}

#if __mips >= 2 || defined(__mips64)
		case fround_op:
		case ftrunc_op:
		case fceil_op:
		case ffloor_op:{
			unsigned int oldrm = ieee754_csr.rm;
			ieee754sp fs;

			SPFROMREG(fs, MIPSInst_FS(ir));
			ieee754_csr.rm = ieee_rm[MIPSInst_FUNC(ir) & 0x3];
			rv.w = ieee754sp_tint(fs);
			ieee754_csr.rm = oldrm;
			rfmt = w_fmt;
			goto copcsr;
		}
#endif /* __mips >= 2 */

#if defined(__mips64)
		case fcvtl_op:{
			ieee754sp fs;

			SPFROMREG(fs, MIPSInst_FS(ir));
			rv.l = ieee754sp_tlong(fs);
			rfmt = l_fmt;
			goto copcsr;
		}

		case froundl_op:
		case ftruncl_op:
		case fceill_op:
		case ffloorl_op:{
			unsigned int oldrm = ieee754_csr.rm;
			ieee754sp fs;

			SPFROMREG(fs, MIPSInst_FS(ir));
			ieee754_csr.rm = ieee_rm[MIPSInst_FUNC(ir) & 0x3];
			rv.l = ieee754sp_tlong(fs);
			ieee754_csr.rm = oldrm;
			rfmt = l_fmt;
			goto copcsr;
		}
#endif /* defined(__mips64) */

		default:
			if (FUNC7(ir) >= fcmp_op) {
				unsigned cmpop = FUNC7(ir) - fcmp_op;
				ieee754sp fs, ft;

				FUNC9(fs, FUNC5(ir));
				FUNC9(ft, FUNC6(ir));
				rv.w = FUNC31(fs, ft,
					cmptab[cmpop & 0x7], cmpop & 0x8);
				rfmt = -1;
				if ((cmpop & 0x8) && FUNC15
					(IEEE754_INVALID_OPERATION))
					rcsr = FPU_CSR_INV_X | FPU_CSR_INV_S;
				else
					goto copcsr;

			}
			else {
				return SIGILL;
			}
			break;
		}
		break;
	}

	case d_fmt:{
		union {
			ieee754dp(*b) (ieee754dp, ieee754dp);
			ieee754dp(*u) (ieee754dp);
		} handler;

		switch (FUNC7(ir)) {
			/* binary ops */
		case fadd_op:
			handler.b = ieee754dp_add;
			goto dcopbop;
		case fsub_op:
			handler.b = ieee754dp_sub;
			goto dcopbop;
		case fmul_op:
			handler.b = ieee754dp_mul;
			goto dcopbop;
		case fdiv_op:
			handler.b = ieee754dp_div;
			goto dcopbop;

			/* unary  ops */
#if __mips >= 2 || defined(__mips64)
		case fsqrt_op:
			handler.u = ieee754dp_sqrt;
			goto dcopuop;
#endif
#if __mips >= 4 && __mips != 32
		case frsqrt_op:
			handler.u = fpemu_dp_rsqrt;
			goto dcopuop;
		case frecip_op:
			handler.u = fpemu_dp_recip;
			goto dcopuop;
#endif
#if __mips >= 4
		case fmovc_op:
			cond = fpucondbit[MIPSInst_FT(ir) >> 2];
			if (((ctx->fcr31 & cond) != 0) !=
				((MIPSInst_FT(ir) & 1) != 0))
				return 0;
			DPFROMREG(rv.d, MIPSInst_FS(ir));
			break;
		case fmovz_op:
			if (xcp->regs[MIPSInst_FT(ir)] != 0)
				return 0;
			DPFROMREG(rv.d, MIPSInst_FS(ir));
			break;
		case fmovn_op:
			if (xcp->regs[MIPSInst_FT(ir)] == 0)
				return 0;
			DPFROMREG(rv.d, MIPSInst_FS(ir));
			break;
#endif
		case fabs_op:
			handler.u = ieee754dp_abs;
			goto dcopuop;

		case fneg_op:
			handler.u = ieee754dp_neg;
			goto dcopuop;

		case fmov_op:
			/* an easy one */
			FUNC1(rv.d, FUNC5(ir));
			goto copcsr;

			/* binary op on handler */
		      dcopbop:{
				ieee754dp fs, ft;

				FUNC1(fs, FUNC5(ir));
				FUNC1(ft, FUNC6(ir));

				rv.d = (*handler.b) (fs, ft);
				goto copcsr;
			}
		      dcopuop:{
				ieee754dp fs;

				FUNC1(fs, FUNC5(ir));
				rv.d = (*handler.u) (fs);
				goto copcsr;
			}

			/* unary conv ops */
		case fcvts_op:{
			ieee754dp fs;

			FUNC1(fs, FUNC5(ir));
			rv.s = FUNC33(fs);
			rfmt = s_fmt;
			goto copcsr;
		}
		case fcvtd_op:
			return SIGILL;	/* not defined */

		case fcvtw_op:{
			ieee754dp fs;

			FUNC1(fs, FUNC5(ir));
			rv.w = FUNC27(fs);	/* wrong */
			rfmt = w_fmt;
			goto copcsr;
		}

#if __mips >= 2 || defined(__mips64)
		case fround_op:
		case ftrunc_op:
		case fceil_op:
		case ffloor_op:{
			unsigned int oldrm = ieee754_csr.rm;
			ieee754dp fs;

			DPFROMREG(fs, MIPSInst_FS(ir));
			ieee754_csr.rm = ieee_rm[MIPSInst_FUNC(ir) & 0x3];
			rv.w = ieee754dp_tint(fs);
			ieee754_csr.rm = oldrm;
			rfmt = w_fmt;
			goto copcsr;
		}
#endif

#if defined(__mips64)
		case fcvtl_op:{
			ieee754dp fs;

			DPFROMREG(fs, MIPSInst_FS(ir));
			rv.l = ieee754dp_tlong(fs);
			rfmt = l_fmt;
			goto copcsr;
		}

		case froundl_op:
		case ftruncl_op:
		case fceill_op:
		case ffloorl_op:{
			unsigned int oldrm = ieee754_csr.rm;
			ieee754dp fs;

			DPFROMREG(fs, MIPSInst_FS(ir));
			ieee754_csr.rm = ieee_rm[MIPSInst_FUNC(ir) & 0x3];
			rv.l = ieee754dp_tlong(fs);
			ieee754_csr.rm = oldrm;
			rfmt = l_fmt;
			goto copcsr;
		}
#endif /* __mips >= 3 */

		default:
			if (FUNC7(ir) >= fcmp_op) {
				unsigned cmpop = FUNC7(ir) - fcmp_op;
				ieee754dp fs, ft;

				FUNC1(fs, FUNC5(ir));
				FUNC1(ft, FUNC6(ir));
				rv.w = FUNC18(fs, ft,
					cmptab[cmpop & 0x7], cmpop & 0x8);
				rfmt = -1;
				if ((cmpop & 0x8)
					&&
					FUNC15
					(IEEE754_INVALID_OPERATION))
					rcsr = FPU_CSR_INV_X | FPU_CSR_INV_S;
				else
					goto copcsr;

			}
			else {
				return SIGILL;
			}
			break;
		}
		break;
	}

	case w_fmt:{
		ieee754sp fs;

		switch (FUNC7(ir)) {
		case fcvts_op:
			/* convert word to single precision real */
			FUNC9(fs, FUNC5(ir));
			rv.s = FUNC34(fs.bits);
			rfmt = s_fmt;
			goto copcsr;
		case fcvtd_op:
			/* convert word to double precision real */
			FUNC9(fs, FUNC5(ir));
			rv.d = FUNC20(fs.bits);
			rfmt = d_fmt;
			goto copcsr;
		default:
			return SIGILL;
		}
		break;
	}

#if defined(__mips64)
	case l_fmt:{
		switch (MIPSInst_FUNC(ir)) {
		case fcvts_op:
			/* convert long to single precision real */
			rv.s = ieee754sp_flong(ctx->fpr[MIPSInst_FS(ir)]);
			rfmt = s_fmt;
			goto copcsr;
		case fcvtd_op:
			/* convert long to double precision real */
			rv.d = ieee754dp_flong(ctx->fpr[MIPSInst_FS(ir)]);
			rfmt = d_fmt;
			goto copcsr;
		default:
			return SIGILL;
		}
		break;
	}
#endif

	default:
		return SIGILL;
	}

	/*
	 * Update the fpu CSR register for this operation.
	 * If an exception is required, generate a tidy SIGFPE exception,
	 * without updating the result register.
	 * Note: cause exception bits do not accumulate, they are rewritten
	 * for each op; only the flag/sticky bits accumulate.
	 */
	ctx->fcr31 = (ctx->fcr31 & ~FPU_CSR_ALL_X) | rcsr;
	if ((ctx->fcr31 >> 5) & ctx->fcr31 & FPU_CSR_ALL_E) {
		/*printk ("SIGFPE: fpu csr = %08x\n",ctx->fcr31); */
		return SIGFPE;
	}

	/*
	 * Now we can safely write the result back to the register file.
	 */
	switch (rfmt) {
	case -1:{
#if __mips >= 4
		cond = fpucondbit[MIPSInst_FD(ir) >> 2];
#else
		cond = FPU_CSR_COND;
#endif
		if (rv.w)
			ctx->fcr31 |= cond;
		else
			ctx->fcr31 &= ~cond;
		break;
	}
	case d_fmt:
		FUNC2(rv.d, FUNC3(ir));
		break;
	case s_fmt:
		FUNC10(rv.s, FUNC3(ir));
		break;
	case w_fmt:
		FUNC8(rv.w, FUNC3(ir));
		break;
#if defined(__mips64)
	case l_fmt:
		DITOREG(rv.l, MIPSInst_FD(ir));
		break;
#endif
	default:
		return SIGILL;
	}

	return 0;
}