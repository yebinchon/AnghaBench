#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct svm_cpu_data {TYPE_1__* tss_desc; } ;
struct kvm_vcpu {int dummy; } ;
struct TYPE_2__ {int type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 struct svm_cpu_data* FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 () ; 
 struct svm_cpu_data* svm_data ; 

__attribute__((used)) static void FUNC3(struct kvm_vcpu *vcpu)
{
	int cpu = FUNC2();

	struct svm_cpu_data *svm_data = FUNC1(svm_data, cpu);
	svm_data->tss_desc->type = 9; /* available 32/64-bit TSS */
	FUNC0();
}