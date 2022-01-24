#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct pt_regs {int dummy; } ;
typedef  int __u32 ;
struct TYPE_6__ {TYPE_1__* fprs; } ;
struct TYPE_7__ {TYPE_2__ fp_regs; } ;
struct TYPE_8__ {TYPE_3__ thread; } ;
struct TYPE_5__ {int /*<<< orphan*/  f; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SA ; 
 int SA_e ; 
 int /*<<< orphan*/  SA_s ; 
#define  _FP_EXPMAX_S 128 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int _FP_QNANBIT_S ; 
 TYPE_4__* current ; 
 int /*<<< orphan*/  FUNC4 (struct pt_regs*,int) ; 

__attribute__((used)) static int FUNC5 (struct pt_regs *regs, int rx, long val) {
        FUNC0(SA);
	int bit;

        FUNC1(SA, &current->thread.fp_regs.fprs[rx].f);
	switch (SA_e) {
	default:
		bit = 8;		/* normalized number */
		break;
	case 0:
		if (FUNC3(SA))
			bit = 10;	/* zero */
		else
			bit = 6;	/* denormalized number */
		break;
	case _FP_EXPMAX_S:
		if (FUNC3(SA))
			bit = 4;	/* infinity */
		else if (FUNC2(SA) & _FP_QNANBIT_S)
			bit = 2;	/* quiet NAN */
		else
			bit = 0;	/* signaling NAN */
		break;
	}
	if (!SA_s)
		bit++;
	FUNC4(regs, ((__u32) val >> bit) & 1);
        return 0;
}