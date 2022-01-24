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
struct vcpu_vmx {int vpid; } ;

/* Variables and functions */
 int VMX_NR_VPIDS ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  enable_vpid ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  vmx_vpid_bitmap ; 
 int /*<<< orphan*/  vmx_vpid_lock ; 

__attribute__((used)) static void FUNC4(struct vcpu_vmx *vmx)
{
	int vpid;

	vmx->vpid = 0;
	if (!enable_vpid)
		return;
	FUNC2(&vmx_vpid_lock);
	vpid = FUNC1(vmx_vpid_bitmap, VMX_NR_VPIDS);
	if (vpid < VMX_NR_VPIDS) {
		vmx->vpid = vpid;
		FUNC0(vpid, vmx_vpid_bitmap);
	}
	FUNC3(&vmx_vpid_lock);
}