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
typedef  int u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct vfp_single {int sign; int exponent; int significand; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FPSCR_DZC ; 
 int /*<<< orphan*/  FPSCR_IOC ; 
 int VFP_DENORMAL ; 
 int VFP_INFINITY ; 
 int VFP_NAN ; 
 int VFP_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct vfp_single*,struct vfp_single*,struct vfp_single*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int) ; 
 struct vfp_single vfp_single_default_qnan ; 
 int /*<<< orphan*/  FUNC5 (struct vfp_single*) ; 
 int /*<<< orphan*/  FUNC6 (int,struct vfp_single*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct vfp_single*) ; 
 int FUNC8 (struct vfp_single*) ; 
 int /*<<< orphan*/  FUNC9 (struct vfp_single*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC10(int sd, int sn, s32 m, u32 fpscr)
{
	struct vfp_single vsd, vsn, vsm;
	u32 exceptions = 0;
	s32 n = FUNC2(sn);
	int tm, tn;

	FUNC1("VFP: s%u = %08x\n", sn, n);

	FUNC9(&vsn, n);
	FUNC9(&vsm, m);

	vsd.sign = vsn.sign ^ vsm.sign;

	tn = FUNC8(&vsn);
	tm = FUNC8(&vsm);

	/*
	 * Is n a NAN?
	 */
	if (tn & VFP_NAN)
		goto vsn_nan;

	/*
	 * Is m a NAN?
	 */
	if (tm & VFP_NAN)
		goto vsm_nan;

	/*
	 * If n and m are infinity, the result is invalid
	 * If n and m are zero, the result is invalid
	 */
	if (tm & tn & (VFP_INFINITY|VFP_ZERO))
		goto invalid;

	/*
	 * If n is infinity, the result is infinity
	 */
	if (tn & VFP_INFINITY)
		goto infinity;

	/*
	 * If m is zero, raise div0 exception
	 */
	if (tm & VFP_ZERO)
		goto divzero;

	/*
	 * If m is infinity, or n is zero, the result is zero
	 */
	if (tm & VFP_INFINITY || tn & VFP_ZERO)
		goto zero;

	if (tn & VFP_DENORMAL)
		FUNC5(&vsn);
	if (tm & VFP_DENORMAL)
		FUNC5(&vsm);

	/*
	 * Ok, we have two numbers, we can perform division.
	 */
	vsd.exponent = vsn.exponent - vsm.exponent + 127 - 1;
	vsm.significand <<= 1;
	if (vsm.significand <= (2 * vsn.significand)) {
		vsn.significand >>= 1;
		vsd.exponent++;
	}
	{
		u64 significand = (u64)vsn.significand << 32;
		FUNC0(significand, vsm.significand);
		vsd.significand = significand;
	}
	if ((vsd.significand & 0x3f) == 0)
		vsd.significand |= ((u64)vsm.significand * vsd.significand != (u64)vsn.significand << 32);

	return FUNC6(sd, &vsd, fpscr, 0, "fdiv");

 vsn_nan:
	exceptions = FUNC3(&vsd, &vsn, &vsm, fpscr);
 pack:
	FUNC4(FUNC7(&vsd), sd);
	return exceptions;

 vsm_nan:
	exceptions = FUNC3(&vsd, &vsm, &vsn, fpscr);
	goto pack;

 zero:
	vsd.exponent = 0;
	vsd.significand = 0;
	goto pack;

 divzero:
	exceptions = FPSCR_DZC;
 infinity:
	vsd.exponent = 255;
	vsd.significand = 0;
	goto pack;

 invalid:
	FUNC4(FUNC7(&vfp_single_default_qnan), sd);
	return FPSCR_IOC;
}