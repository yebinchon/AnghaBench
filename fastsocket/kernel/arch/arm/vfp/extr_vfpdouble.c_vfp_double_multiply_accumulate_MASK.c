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
typedef  int u32 ;
struct vfp_double {scalar_t__ exponent; void* sign; scalar_t__ significand; } ;

/* Variables and functions */
 int NEG_MULTIPLY ; 
 int NEG_SUBTRACT ; 
 int FUNC0 (struct vfp_double*,struct vfp_double*,struct vfp_double*,int) ; 
 int FUNC1 (struct vfp_double*,struct vfp_double*,struct vfp_double*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct vfp_double*) ; 
 int FUNC3 (int,struct vfp_double*,int,int,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct vfp_double*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 void* FUNC6 (void*) ; 

__attribute__((used)) static u32
FUNC7(int dd, int dn, int dm, u32 fpscr, u32 negate, char *func)
{
	struct vfp_double vdd, vdp, vdn, vdm;
	u32 exceptions;

	FUNC4(&vdn, FUNC5(dn));
	if (vdn.exponent == 0 && vdn.significand)
		FUNC2(&vdn);

	FUNC4(&vdm, FUNC5(dm));
	if (vdm.exponent == 0 && vdm.significand)
		FUNC2(&vdm);

	exceptions = FUNC1(&vdp, &vdn, &vdm, fpscr);
	if (negate & NEG_MULTIPLY)
		vdp.sign = FUNC6(vdp.sign);

	FUNC4(&vdn, FUNC5(dd));
	if (negate & NEG_SUBTRACT)
		vdn.sign = FUNC6(vdn.sign);

	exceptions |= FUNC0(&vdd, &vdn, &vdp, fpscr);

	return FUNC3(dd, &vdd, fpscr, exceptions, func);
}