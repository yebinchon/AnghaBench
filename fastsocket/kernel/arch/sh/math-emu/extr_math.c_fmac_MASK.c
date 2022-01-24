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
struct sh_fpu_soft_struct {int dummy; } ;
struct pt_regs {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  F0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FP_DECL_EX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FR0 ; 
 int /*<<< orphan*/  FRm ; 
 int /*<<< orphan*/  FRn ; 
 int /*<<< orphan*/  Fm ; 
 int /*<<< orphan*/  Fn ; 
 int /*<<< orphan*/  Fr ; 
 int /*<<< orphan*/  Ft ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct sh_fpu_soft_struct *fregs, struct pt_regs *regs, int m, int n)
{
	FP_DECL_EX;
	FUNC1(Fr);
	FUNC1(Ft);
	FUNC1(F0);
	FUNC1(Fm);
	FUNC1(Fn);
	FUNC4(F0, FR0);
	FUNC4(Fm, FRm);
	FUNC4(Fn, FRn);
	FUNC2(Ft, Fm, F0);
	FUNC0(Fr, Fn, Ft);
	FUNC3(FRn, Fr);
	return 0;
}