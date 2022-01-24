#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u32 ;
struct vcpu_svm {TYPE_2__* vmcb; int /*<<< orphan*/ * msrpm; } ;
struct TYPE_3__ {int lbr_ctl; } ;
struct TYPE_4__ {TYPE_1__ control; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_IA32_LASTBRANCHFROMIP ; 
 int /*<<< orphan*/  MSR_IA32_LASTBRANCHTOIP ; 
 int /*<<< orphan*/  MSR_IA32_LASTINTFROMIP ; 
 int /*<<< orphan*/  MSR_IA32_LASTINTTOIP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static void FUNC1(struct vcpu_svm *svm)
{
	u32 *msrpm = svm->msrpm;

	svm->vmcb->control.lbr_ctl = 1;
	FUNC0(msrpm, MSR_IA32_LASTBRANCHFROMIP, 1, 1);
	FUNC0(msrpm, MSR_IA32_LASTBRANCHTOIP, 1, 1);
	FUNC0(msrpm, MSR_IA32_LASTINTFROMIP, 1, 1);
	FUNC0(msrpm, MSR_IA32_LASTINTTOIP, 1, 1);
}