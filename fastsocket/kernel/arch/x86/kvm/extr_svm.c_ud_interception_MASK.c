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
struct vcpu_svm {int /*<<< orphan*/  vcpu; } ;

/* Variables and functions */
 int EMULATE_DONE ; 
 int /*<<< orphan*/  EMULTYPE_TRAP_UD ; 
 int /*<<< orphan*/  UD_VECTOR ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct vcpu_svm *svm)
{
	int er;

	er = FUNC0(&svm->vcpu, EMULTYPE_TRAP_UD);
	if (er != EMULATE_DONE)
		FUNC1(&svm->vcpu, UD_VECTOR);
	return 1;
}