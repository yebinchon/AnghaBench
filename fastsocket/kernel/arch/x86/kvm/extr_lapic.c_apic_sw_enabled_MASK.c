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
struct kvm_lapic {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  APIC_SPIV ; 
 int APIC_SPIV_APIC_ENABLED ; 
 int FUNC0 (struct kvm_lapic*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int  FUNC1(struct kvm_lapic *apic)
{
	return FUNC0(apic, APIC_SPIV) & APIC_SPIV_APIC_ENABLED;
}