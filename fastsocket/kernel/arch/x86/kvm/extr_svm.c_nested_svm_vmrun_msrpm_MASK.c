#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
struct TYPE_6__ {int* msrpm; int /*<<< orphan*/  vmcb_msrpm; } ;
struct vcpu_svm {int* msrpm; TYPE_3__ nested; TYPE_2__* vmcb; } ;
struct TYPE_4__ {int /*<<< orphan*/  msrpm_base_pa; } ;
struct TYPE_5__ {TYPE_1__ control; } ;

/* Variables and functions */
 int /*<<< orphan*/  KM_USER0 ; 
 int MSRPM_ALLOC_ORDER ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int*) ; 
 int* FUNC1 (struct vcpu_svm*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC3(struct vcpu_svm *svm)
{
	u32 *nested_msrpm;
	int i;

	nested_msrpm = FUNC1(svm, svm->nested.vmcb_msrpm, KM_USER0);
	if (!nested_msrpm)
		return false;

	for (i=0; i< PAGE_SIZE * (1 << MSRPM_ALLOC_ORDER) / 4; i++)
		svm->nested.msrpm[i] = svm->msrpm[i] | nested_msrpm[i];

	svm->vmcb->control.msrpm_base_pa = FUNC0(svm->nested.msrpm);

	FUNC2(nested_msrpm, KM_USER0);

	return true;
}