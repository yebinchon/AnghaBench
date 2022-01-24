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
struct TYPE_5__ {TYPE_1__* state; } ;
struct TYPE_6__ {TYPE_2__ guest_fpu; } ;
struct kvm_vcpu {TYPE_3__ arch; } ;
struct kvm_fpu {int /*<<< orphan*/  xmm; int /*<<< orphan*/  last_dp; int /*<<< orphan*/  last_ip; int /*<<< orphan*/  last_opcode; int /*<<< orphan*/  ftwx; int /*<<< orphan*/  fsw; int /*<<< orphan*/  fcw; int /*<<< orphan*/  fpr; } ;
struct i387_fxsave_struct {int /*<<< orphan*/  xmm_space; int /*<<< orphan*/  rdp; int /*<<< orphan*/  rip; int /*<<< orphan*/  fop; int /*<<< orphan*/  twd; int /*<<< orphan*/  swd; int /*<<< orphan*/  cwd; int /*<<< orphan*/  st_space; } ;
struct TYPE_4__ {struct i387_fxsave_struct fxsave; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct kvm_vcpu*) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm_vcpu*) ; 

int FUNC3(struct kvm_vcpu *vcpu, struct kvm_fpu *fpu)
{
	struct i387_fxsave_struct *fxsave =
			&vcpu->arch.guest_fpu.state->fxsave;

	FUNC1(vcpu);

	FUNC0(fpu->fpr, fxsave->st_space, 128);
	fpu->fcw = fxsave->cwd;
	fpu->fsw = fxsave->swd;
	fpu->ftwx = fxsave->twd;
	fpu->last_opcode = fxsave->fop;
	fpu->last_ip = fxsave->rip;
	fpu->last_dp = fxsave->rdp;
	FUNC0(fpu->xmm, fxsave->xmm_space, sizeof fxsave->xmm_space);

	FUNC2(vcpu);

	return 0;
}