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
struct sca_block {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  list; int /*<<< orphan*/  lock; } ;
struct TYPE_5__ {struct sca_block* sca; int /*<<< orphan*/  dbf; TYPE_1__ float_int; } ;
struct kvm {TYPE_2__ arch; } ;
struct TYPE_6__ {int pid; } ;

/* Variables and functions */
 int ENOMEM ; 
 struct kvm* FUNC0 (int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct kvm*,int,char*,char*) ; 
 TYPE_3__* current ; 
 int /*<<< orphan*/  FUNC3 (char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  debug_sprintf_view ; 
 int /*<<< orphan*/  FUNC5 (unsigned long) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct kvm*) ; 
 struct kvm* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 

struct kvm *FUNC12(void)
{
	struct kvm *kvm;
	int rc;
	char debug_name[16];

	rc = FUNC9();
	if (rc)
		goto out_nokvm;

	rc = -ENOMEM;
	kvm = FUNC8(sizeof(struct kvm), GFP_KERNEL);
	if (!kvm)
		goto out_nokvm;

	kvm->arch.sca = (struct sca_block *) FUNC6(GFP_KERNEL);
	if (!kvm->arch.sca)
		goto out_nosca;

	FUNC11(debug_name, "kvm-%u", current->pid);

	kvm->arch.dbf = FUNC3(debug_name, 8, 2, 8 * sizeof(long));
	if (!kvm->arch.dbf)
		goto out_nodbf;

	FUNC10(&kvm->arch.float_int.lock);
	FUNC1(&kvm->arch.float_int.list);

	FUNC4(kvm->arch.dbf, &debug_sprintf_view);
	FUNC2(kvm, 3, "%s", "vm created");

	return kvm;
out_nodbf:
	FUNC5((unsigned long)(kvm->arch.sca));
out_nosca:
	FUNC7(kvm);
out_nokvm:
	return FUNC0(rc);
}