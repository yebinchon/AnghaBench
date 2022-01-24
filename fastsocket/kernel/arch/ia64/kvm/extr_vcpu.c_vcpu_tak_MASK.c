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
union ia64_pta {scalar_t__ vf; int /*<<< orphan*/  val; } ;
typedef  int u64 ;
struct thash_data {int key; int /*<<< orphan*/  p; } ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  D_TLB ; 
 int /*<<< orphan*/  FUNC0 (struct kvm_vcpu*) ; 
 struct thash_data* FUNC1 (struct kvm_vcpu*,int,int /*<<< orphan*/ ) ; 

u64 FUNC2(struct kvm_vcpu *vcpu, u64 vadr)
{
	struct thash_data *data;
	union ia64_pta vpta;
	u64 key;

	vpta.val = FUNC0(vcpu);
	if (vpta.vf == 0) {
		key = 1;
		return key;
	}
	data = FUNC1(vcpu, vadr, D_TLB);
	if (!data || !data->p)
		key = 1;
	else
		key = data->key;

	return key;
}