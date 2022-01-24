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
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FPSCR_SZ ; 
 int /*<<< orphan*/  FRm ; 
 scalar_t__ Rn ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int
FUNC2(struct sh_fpu_soft_struct *fregs, struct pt_regs *regs, int m,
	     int n)
{
	if (FPSCR_SZ) {
		FUNC0(m);
		Rn -= 8;
		FUNC1(FRm, Rn + 4);
		m++;
		FUNC1(FRm, Rn);
	} else {
		Rn -= 4;
		FUNC1(FRm, Rn);
	}

	return 0;
}