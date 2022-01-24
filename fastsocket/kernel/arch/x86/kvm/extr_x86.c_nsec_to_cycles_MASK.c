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
typedef  int u64 ;
struct kvm_vcpu {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  USEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct kvm_vcpu*) ; 

__attribute__((used)) static inline u64 FUNC2(struct kvm_vcpu *vcpu, u64 nsec)
{
	u64 ret;

	ret = nsec * FUNC1(vcpu);
	FUNC0(ret, USEC_PER_SEC);
	return ret;
}