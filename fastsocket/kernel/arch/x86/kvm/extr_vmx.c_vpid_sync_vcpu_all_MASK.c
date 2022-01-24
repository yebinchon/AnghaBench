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
struct vcpu_vmx {scalar_t__ vpid; } ;

/* Variables and functions */
 int /*<<< orphan*/  VMX_VPID_EXTENT_SINGLE_CONTEXT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void FUNC1(struct vcpu_vmx *vmx)
{
	if (vmx->vpid == 0)
		return;

	FUNC0(VMX_VPID_EXTENT_SINGLE_CONTEXT, vmx->vpid, 0);
}