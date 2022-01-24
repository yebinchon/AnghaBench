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
struct vfp_single {scalar_t__ exponent; scalar_t__ significand; } ;
typedef  int /*<<< orphan*/  s32 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct vfp_single*,struct vfp_single*,struct vfp_single*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct vfp_single*) ; 
 int /*<<< orphan*/  FUNC4 (int,struct vfp_single*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (struct vfp_single*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u32 FUNC6(int sd, int sn, s32 m, u32 fpscr)
{
	struct vfp_single vsd, vsn, vsm;
	u32 exceptions;
	s32 n = FUNC1(sn);

	FUNC0("VFP: s%u = %08x\n", sn, n);

	FUNC5(&vsn, n);
	if (vsn.exponent == 0 && vsn.significand)
		FUNC3(&vsn);

	FUNC5(&vsm, m);
	if (vsm.exponent == 0 && vsm.significand)
		FUNC3(&vsm);

	exceptions = FUNC2(&vsd, &vsn, &vsm, fpscr);
	return FUNC4(sd, &vsd, fpscr, exceptions, "fmul");
}