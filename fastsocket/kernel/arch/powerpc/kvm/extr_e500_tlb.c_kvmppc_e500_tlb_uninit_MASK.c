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
struct kvmppc_vcpu_e500 {int /*<<< orphan*/ * guest_tlb; int /*<<< orphan*/ * shadow_tlb; int /*<<< orphan*/ * shadow_pages; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 

void FUNC1(struct kvmppc_vcpu_e500 *vcpu_e500)
{
	FUNC0(vcpu_e500->shadow_pages[1]);
	FUNC0(vcpu_e500->shadow_pages[0]);
	FUNC0(vcpu_e500->shadow_tlb[1]);
	FUNC0(vcpu_e500->guest_tlb[1]);
	FUNC0(vcpu_e500->shadow_tlb[0]);
	FUNC0(vcpu_e500->guest_tlb[0]);
}