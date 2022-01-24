#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {unsigned long cr0; unsigned long cr2; unsigned long cr3; unsigned long cr4; } ;
struct TYPE_17__ {TYPE_3__ arch; } ;
struct vcpu_svm {TYPE_4__ vcpu; TYPE_2__* vmcb; } ;
struct TYPE_14__ {int exit_info_1; int exit_code; } ;
struct TYPE_15__ {TYPE_1__ control; } ;

/* Variables and functions */
 int CR_VALID ; 
 int SVM_EXITINFO_REG_MASK ; 
 int SVM_EXIT_READ_CR0 ; 
 int /*<<< orphan*/  SVM_FEATURE_DECODE_ASSIST ; 
 int /*<<< orphan*/  UD_VECTOR ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 
 int FUNC1 (struct vcpu_svm*) ; 
 unsigned long FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 unsigned long FUNC5 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int,unsigned long) ; 
 int FUNC7 (TYPE_4__*,unsigned long) ; 
 int FUNC8 (TYPE_4__*,unsigned long) ; 
 int FUNC9 (TYPE_4__*,unsigned long) ; 
 int FUNC10 (TYPE_4__*,unsigned long) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int) ; 

__attribute__((used)) static int FUNC14(struct vcpu_svm *svm)
{
	int reg, cr;
	unsigned long val;
	int err;

	if (!FUNC12(SVM_FEATURE_DECODE_ASSIST))
		return FUNC1(svm);

	if (FUNC13((svm->vmcb->control.exit_info_1 & CR_VALID) == 0))
		return FUNC1(svm);

	reg = svm->vmcb->control.exit_info_1 & SVM_EXITINFO_REG_MASK;
	cr = svm->vmcb->control.exit_code - SVM_EXIT_READ_CR0;

	err = 0;
	if (cr >= 16) { /* mov to cr */
		cr -= 16;
		val = FUNC5(&svm->vcpu, reg);
		switch (cr) {
		case 0:
			err = FUNC7(&svm->vcpu, val);
			break;
		case 3:
			err = FUNC8(&svm->vcpu, val);
			break;
		case 4:
			err = FUNC9(&svm->vcpu, val);
			break;
		case 8:
			err = FUNC10(&svm->vcpu, val);
			break;
		default:
			FUNC0(1, "unhandled write to CR%d", cr);
			FUNC4(&svm->vcpu, UD_VECTOR);
			return 1;
		}
	} else { /* mov from cr */
		switch (cr) {
		case 0:
			val = svm->vcpu.arch.cr0;
			break;
		case 2:
			val = svm->vcpu.arch.cr2;
			break;
		case 3:
			val = svm->vcpu.arch.cr3;
			break;
		case 4:
			val = svm->vcpu.arch.cr4;
			break;
		case 8:
			val = FUNC2(&svm->vcpu);
			break;
		default:
			FUNC0(1, "unhandled read from CR%d", cr);
			FUNC4(&svm->vcpu, UD_VECTOR);
			return 1;
		}
		FUNC6(&svm->vcpu, reg, val);
	}
	if (err)
		FUNC3(&svm->vcpu, 0);
	else
		FUNC11(&svm->vcpu);

	return 1;
}