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
struct vfp_single {int exponent; int /*<<< orphan*/  significand; int /*<<< orphan*/  sign; } ;
struct vfp_double {int exponent; int /*<<< orphan*/  significand; int /*<<< orphan*/  sign; } ;

/* Variables and functions */
 int /*<<< orphan*/  FPSCR_IOC ; 
 int VFP_DENORMAL ; 
 int VFP_INFINITY ; 
 int VFP_NAN ; 
 int VFP_QNAN ; 
 int /*<<< orphan*/  VFP_SINGLE_SIGNIFICAND_QNAN ; 
 int VFP_SNAN ; 
 int VFP_ZERO ; 
 int /*<<< orphan*/  FUNC0 (struct vfp_double*) ; 
 int FUNC1 (struct vfp_double*) ; 
 int /*<<< orphan*/  FUNC2 (struct vfp_double*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int,struct vfp_single*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct vfp_single*) ; 

__attribute__((used)) static u32 FUNC8(int sd, int unused, int dm, u32 fpscr)
{
	struct vfp_double vdm;
	struct vfp_single vsd;
	int tm;
	u32 exceptions = 0;

	FUNC2(&vdm, FUNC3(dm));

	tm = FUNC1(&vdm);

	/*
	 * If we have a signalling NaN, signal invalid operation.
	 */
	if (tm == VFP_SNAN)
		exceptions = FPSCR_IOC;

	if (tm & VFP_DENORMAL)
		FUNC0(&vdm);

	vsd.sign = vdm.sign;
	vsd.significand = FUNC4(vdm.significand);

	/*
	 * If we have an infinity or a NaN, the exponent must be 255
	 */
	if (tm & (VFP_INFINITY|VFP_NAN)) {
		vsd.exponent = 255;
		if (tm == VFP_QNAN)
			vsd.significand |= VFP_SINGLE_SIGNIFICAND_QNAN;
		goto pack_nan;
	} else if (tm & VFP_ZERO)
		vsd.exponent = 0;
	else
		vsd.exponent = vdm.exponent - (1023 - 127);

	return FUNC6(sd, &vsd, fpscr, exceptions, "fcvts");

 pack_nan:
	FUNC5(FUNC7(&vsd), sd);
	return exceptions;
}