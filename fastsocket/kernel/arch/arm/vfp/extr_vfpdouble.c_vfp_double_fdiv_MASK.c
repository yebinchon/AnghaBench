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
typedef  scalar_t__ u64 ;
typedef  int /*<<< orphan*/  u32 ;
struct vfp_double {int sign; int exponent; int significand; } ;
typedef  scalar_t__ s64 ;

/* Variables and functions */
 int /*<<< orphan*/  FPSCR_DZC ; 
 int /*<<< orphan*/  FPSCR_IOC ; 
 int VFP_DENORMAL ; 
 int VFP_INFINITY ; 
 int VFP_NAN ; 
 int VFP_ZERO ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__*,scalar_t__*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*,scalar_t__*,int,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 struct vfp_double vfp_double_default_qnan ; 
 int /*<<< orphan*/  FUNC3 (struct vfp_double*) ; 
 int /*<<< orphan*/  FUNC4 (int,struct vfp_double*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct vfp_double*) ; 
 int FUNC6 (struct vfp_double*) ; 
 int /*<<< orphan*/  FUNC7 (struct vfp_double*,int /*<<< orphan*/ ) ; 
 int FUNC8 (int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (struct vfp_double*,struct vfp_double*,struct vfp_double*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static u32 FUNC12(int dd, int dn, int dm, u32 fpscr)
{
	struct vfp_double vdd, vdn, vdm;
	u32 exceptions = 0;
	int tm, tn;

	FUNC7(&vdn, FUNC9(dn));
	FUNC7(&vdm, FUNC9(dm));

	vdd.sign = vdn.sign ^ vdm.sign;

	tn = FUNC6(&vdn);
	tm = FUNC6(&vdm);

	/*
	 * Is n a NAN?
	 */
	if (tn & VFP_NAN)
		goto vdn_nan;

	/*
	 * Is m a NAN?
	 */
	if (tm & VFP_NAN)
		goto vdm_nan;

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
	 * If m is zero, raise div0 exceptions
	 */
	if (tm & VFP_ZERO)
		goto divzero;

	/*
	 * If m is infinity, or n is zero, the result is zero
	 */
	if (tm & VFP_INFINITY || tn & VFP_ZERO)
		goto zero;

	if (tn & VFP_DENORMAL)
		FUNC3(&vdn);
	if (tm & VFP_DENORMAL)
		FUNC3(&vdm);

	/*
	 * Ok, we have two numbers, we can perform division.
	 */
	vdd.exponent = vdn.exponent - vdm.exponent + 1023 - 1;
	vdm.significand <<= 1;
	if (vdm.significand <= (2 * vdn.significand)) {
		vdn.significand >>= 1;
		vdd.exponent++;
	}
	vdd.significand = FUNC8(vdn.significand, 0, vdm.significand);
	if ((vdd.significand & 0x1ff) <= 2) {
		u64 termh, terml, remh, reml;
		FUNC1(&termh, &terml, vdm.significand, vdd.significand);
		FUNC2(&remh, &reml, vdn.significand, 0, termh, terml);
		while ((s64)remh < 0) {
			vdd.significand -= 1;
			FUNC0(&remh, &reml, remh, reml, 0, vdm.significand);
		}
		vdd.significand |= (reml != 0);
	}
	return FUNC4(dd, &vdd, fpscr, 0, "fdiv");

 vdn_nan:
	exceptions = FUNC10(&vdd, &vdn, &vdm, fpscr);
 pack:
	FUNC11(FUNC5(&vdd), dd);
	return exceptions;

 vdm_nan:
	exceptions = FUNC10(&vdd, &vdm, &vdn, fpscr);
	goto pack;

 zero:
	vdd.exponent = 0;
	vdd.significand = 0;
	goto pack;

 divzero:
	exceptions = FPSCR_DZC;
 infinity:
	vdd.exponent = 2047;
	vdd.significand = 0;
	goto pack;

 invalid:
	FUNC11(FUNC5(&vfp_double_default_qnan), dd);
	return FPSCR_IOC;
}